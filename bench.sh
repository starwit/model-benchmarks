numactl -N 0 -C 0-23 -m 0 python benchmark.py -b 1 -s ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-23 -m 0 python benchmark.py -b 3 -s ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-23 -m 0 python benchmark.py -b 5 -s ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-23 -m 0 python benchmark.py -b 10 -s ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-23 -m 0 python benchmark.py -b 20 -s ~/workspaces/datasets/carmel/ArchWestMainStreetEB/

