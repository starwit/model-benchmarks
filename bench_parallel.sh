numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 112-159 -m 0 python benchmark.py -s 48t -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 1 -C 56-103 -m 1 python benchmark.py -s 48t -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 1 -C 168-215 -m 1 python benchmark.py -s 48t -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/

wait