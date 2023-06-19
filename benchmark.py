import csv
import os
import time
from collections import defaultdict
from dataclasses import dataclass
from typing import Any

import cv2
import numpy as np
import torch
from typing import NamedTuple
from google.protobuf.text_format import MessageToString
from ultralytics.nn.autobackend import AutoBackend
from ultralytics.yolo.data.augment import LetterBox
from ultralytics.yolo.utils.checks import check_imgsz
from ultralytics.yolo.utils.ops import non_max_suppression, scale_boxes

CONFIDENCE_THRESHOLD = 0.25
IOU_THRESHOLD = 0.7
INFERENCE_SIZE = (640, 640)
TORCH_DEVICE = torch.device('cuda:0')
YOLO_WEIGHTS = "yolov8n.pt"


@dataclass
class Metrics:
    inference_start: int = 0
    input_preprocessing: int = 0
    model: int = 0
    non_max_suppression: int = 0
    box_scaling: int = 0
    total_time_us: int = 0


def frame_iter(path):
    files = sorted(os.listdir(path))
    for file in files:
        basename = os.path.splitext(file)[0]
        cv2_frame = cv2.imread(os.path.join(path, file))
        yield basename, cv2_frame

def prepare_input(image, stride):
    out_img = LetterBox(INFERENCE_SIZE, auto=True, stride=stride)(image=image)
    out_img = out_img.transpose((2, 0, 1))[::-1]
    out_img = np.ascontiguousarray(out_img)
    out_img = torch.from_numpy(out_img).to(TORCH_DEVICE).float() / 255.0
    return out_img.unsqueeze(0)

@torch.no_grad()
def infer(model, input_image):

    metrics = Metrics()
        
    inference_start = time.monotonic_ns()
    metrics.inference_start = inference_start

    inf_image = prepare_input(input_image, model.stride)

    metrics.input_preprocessing = time.monotonic_ns()

    yolo_prediction = model(inf_image)

    metrics.model = time.monotonic_ns()

    predictions = non_max_suppression(
        yolo_prediction, 
        conf_thres=CONFIDENCE_THRESHOLD, 
        iou_thres=IOU_THRESHOLD
    )[0]

    metrics.non_max_suppression = time.monotonic_ns()
    
    predictions[:, :4] = scale_boxes(inf_image.shape[2:], predictions[:, :4], input_image.shape[:2]).round()

    metrics.box_scaling = time.monotonic_ns()

    metrics.total_time_us = time.monotonic_ns()
    return metrics, predictions


if __name__ == '__main__':
    model = AutoBackend(
        YOLO_WEIGHTS,
        device=TORCH_DEVICE,
        fp16=False
    )
    model.eval()
    input_image_size = check_imgsz(INFERENCE_SIZE, stride=model.stride)
    
    with open('metrics.csv', 'w', newline='') as metrics_file:
        csv_writer = csv.DictWriter(metrics_file, fieldnames=Metrics.__dataclass_fields__)
        csv_writer.writeheader()

        for basename, frame in frame_iter('frames'):
            print(f'inferencing {basename}')
            metrics, _ = infer(model, frame)
            csv_writer.writerow(metrics.__dict__)
        
    
