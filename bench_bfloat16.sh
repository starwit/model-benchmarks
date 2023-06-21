#!/bin/bash

numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t -b 1 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t -b 2 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t -b 4 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t -b 16 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48t -b 32 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/