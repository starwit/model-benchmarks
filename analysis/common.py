import pandas as pd
from plotly.subplots import make_subplots
import plotly.graph_objects as go
import numpy as np
import os
import re

def get_files(dir):
    return [os.path.join(dir, f) for f in os.listdir(dir)]

def threads_from_filename(name):
    m = re.match(r'.*_(\d+)t[\._]', name)
    return int(m.group(1))

def batchsize_from_filename(name):
    m = re.match(r'.*_b(\d+)[\._]', name)
    return int(m.group(1))

def read_metrics(file_path):
    metrics = pd.read_csv(file_path)
    metrics['total_time_us'] = metrics['total_time_us'] - metrics['inference_start']
    metrics['non_max_suppression'] = metrics['non_max_suppression'] - metrics['model']
    metrics['model'] = metrics['model'] - metrics['inference_start']

    metrics['inference_start'] = metrics['inference_start'] - metrics['inference_start'][0]

    metrics.iloc(1)[:4] = metrics.iloc(1)[:4] // 1000
    metrics = metrics[metrics['model'] < metrics['model'].quantile(0.99)]
    metrics['model_per_frame'] = metrics['model'] // metrics['batch_size']
    metrics['total_per_frame'] = metrics['total_time_us'] // metrics['batch_size']
    metrics['fps'] = 1 / (metrics['total_per_frame'] / 1_000_000)
    return metrics

def create_histograms(metrics_list, name_list, title, metric_name):
    fig = make_subplots(rows=len(metrics_list), cols=1, shared_xaxes=True, vertical_spacing=0.02)
    for idx, (metric, name) in enumerate(zip(metrics_list, name_list)):
        fig.add_histogram(x=metric[metric_name], row=idx+1, col=1, nbinsx=200, name=name)
        fig.add_vline(x=np.median(metric[metric_name]), row=idx+1, col=1, annotation_text=f'med. {round(np.median(metric[metric_name]), 2)}', annotation_bgcolor='rgba(255,255,255,0.5)', line_color="grey", annotation_xshift=3)
        fig.add_vline(x=np.average(metric[metric_name]), row=idx+1, col=1, annotation_text=f'avg. {round(np.average(metric[metric_name]), 2)}', annotation_bgcolor='rgba(255,255,255,0.5)', annotation_xshift=3, annotation_yshift=-20)

    fig.update_layout(height=100*len(metrics_list)+150, title=title)
    fig.update_xaxes(title_text=metric_name, row=len(metrics_list))
    return fig

def create_ecdfs(metrics_list, name_list, title, metric_name):
    fig = go.Figure()
    for metric, name in zip(metrics_list, name_list):
        data = metric[metric_name]
        fig.add_scatter(x=np.unique(data), y=ecdf(data)(np.unique(data)), line_shape='hv', name=name)
    fig.update_layout(height=400, title=title)
    return fig

def ecdf(x):
    x = np.sort(x)
    def result(v):
        return np.searchsorted(x, v, side='right') / x.size
    return result
    