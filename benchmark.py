import csv
import os
import time
from collections import defaultdict
from dataclasses import dataclass
from typing import Any, Iterator

import cv2
import numpy as np
import torch
import torch.utils.data
from typing import NamedTuple
from google.protobuf.text_format import MessageToString
from ultralytics.nn.autobackend import AutoBackend
from ultralytics.yolo.data.augment import LetterBox
from ultralytics.yolo.utils.checks import check_imgsz
from ultralytics.yolo.utils.ops import non_max_suppression, scale_boxes

CONFIDENCE_THRESHOLD = 0.25
IOU_THRESHOLD = 0.7
INFERENCE_SIZE = (640, 640)
TORCH_DEVICE = torch.device('cpu')
YOLO_WEIGHTS = "yolov8n.pt"
BATCH_SIZE = 10

def is_cuda():
    return TORCH_DEVICE.type == 'cuda'

def is_cpu():
    return TORCH_DEVICE.type == 'cpu'


@dataclass
class Metrics:
    inference_start: int = 0
    model: int = 0
    non_max_suppression: int = 0
    total_time_us: int = 0
    batch_size: int = 0


class FramesDataset(torch.utils.data.IterableDataset):
    def __init__(self, path, model_stride) -> None:
        super().__init__()
        self.path = path
        self.model_stride = model_stride

    def __iter__(self) -> Iterator:
        files = sorted(os.listdir(self.path))
        for file in files:
            cv2_frame = cv2.imread(os.path.join(self.path, file))
            yield self.prepare_input(cv2_frame)

    def prepare_input(self, image):
        out_img = LetterBox(INFERENCE_SIZE, auto=True, stride=self.model_stride)(image=image)
        out_img = out_img.transpose((2, 0, 1))[::-1]
        out_img = np.ascontiguousarray(out_img)
        out_img = torch.from_numpy(out_img).to(TORCH_DEVICE).float() / 255.0
        return out_img
    

@torch.no_grad()
def infer(model, inf_batch):

    metrics = Metrics()
        
    inference_start = time.monotonic_ns()
    metrics.inference_start = inference_start

    yolo_prediction = model(inf_batch)

    if is_cuda():
        torch.cuda.synchronize()

    metrics.model = time.monotonic_ns()

    predictions = non_max_suppression(
        yolo_prediction, 
        conf_thres=CONFIDENCE_THRESHOLD, 
        iou_thres=IOU_THRESHOLD
    )

    metrics.non_max_suppression = time.monotonic_ns()
    
    metrics.total_time_us = time.monotonic_ns()
    metrics.batch_size = inf_batch.shape[0]
    return metrics, predictions


if __name__ == '__main__':
    model = AutoBackend(
        YOLO_WEIGHTS,
        device=TORCH_DEVICE,
        fp16=False
    )
    model.eval()
    input_image_size = check_imgsz(INFERENCE_SIZE, stride=model.stride)

    if is_cpu():
        import intel_extension_for_pytorch as ipex
        model = ipex.optimize(model)

    dataloader = torch.utils.data.DataLoader(FramesDataset('frames', model.stride), batch_size=BATCH_SIZE)
    
    with open('metrics.csv', 'w', newline='') as metrics_file:
        csv_writer = csv.DictWriter(metrics_file, fieldnames=Metrics.__dataclass_fields__)
        csv_writer.writeheader()

        for idx, frame_batch in enumerate(dataloader):
            print(f'inferencing batch {idx} of size {BATCH_SIZE}')
            metrics, _ = infer(model, frame_batch)
            csv_writer.writerow(metrics.__dict__)
        
    
