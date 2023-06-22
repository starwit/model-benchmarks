#!/bin/bash

numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t -b 4 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o bfloat16
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o bfloat16
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t -b 12 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o bfloat16
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t -b 16 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o bfloat16
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t -b 20 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o bfloat16
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t -b 24 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o bfloat16
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t -b 28 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o bfloat16
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t -b 32 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o bfloat16

numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t_bf16 -q bfloat16 -b 4 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o bfloat16
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t_bf16 -q bfloat16 -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o bfloat16
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t_bf16 -q bfloat16 -b 12 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o bfloat16
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t_bf16 -q bfloat16 -b 16 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o bfloat16
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t_bf16 -q bfloat16 -b 20 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o bfloat16
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t_bf16 -q bfloat16 -b 24 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o bfloat16
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t_bf16 -q bfloat16 -b 28 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o bfloat16
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t_bf16 -q bfloat16 -b 32 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o bfloat16