numactl -N 0 -C 0-11 -m 0 python benchmark.py -s 12t -b 1 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-11 -m 0 python benchmark.py -s 12t -b 2 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-11 -m 0 python benchmark.py -s 12t -b 4 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-11 -m 0 python benchmark.py -s 12t -b 8  -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-11 -m 0 python benchmark.py -s 12t -b 16 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-11 -m 0 python benchmark.py -s 12t -b 32 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-11 -m 0 python benchmark.py -s 12t -b 64 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/

numactl -N 0 -C 0-23 -m 0 python benchmark.py -s 24t -b 1 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-23 -m 0 python benchmark.py -s 24t -b 2 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-23 -m 0 python benchmark.py -s 24t -b 4 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-23 -m 0 python benchmark.py -s 24t -b 8  -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-23 -m 0 python benchmark.py -s 24t -b 16 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-23 -m 0 python benchmark.py -s 24t -b 32 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-23 -m 0 python benchmark.py -s 24t -b 64 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/

numactl -N 0 -C 0-35 -m 0 python benchmark.py -s 36t -b 1 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-35 -m 0 python benchmark.py -s 36t -b 2 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-35 -m 0 python benchmark.py -s 36t -b 4 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-35 -m 0 python benchmark.py -s 36t -b 8  -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-35 -m 0 python benchmark.py -s 36t -b 16 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-35 -m 0 python benchmark.py -s 36t -b 32 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-35 -m 0 python benchmark.py -s 36t -b 64 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/

numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t -b 1 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t -b 2 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t -b 4 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t -b 8  -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t -b 16 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t -b 32 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t -b 64 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/

numactl -N 0 -m 0 -C 0-55,112-115 python benchmark.py -s 60t -b 1 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-115 python benchmark.py -s 60t -b 2 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-115 python benchmark.py -s 60t -b 4 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-115 python benchmark.py -s 60t -b 8  -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-115 python benchmark.py -s 60t -b 16 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-115 python benchmark.py -s 60t -b 32 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-115 python benchmark.py -s 60t -b 64 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/

numactl -N 0 -m 0 -C 0-55,112-127 python benchmark.py -s 72t -b 1 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-127 python benchmark.py -s 72t -b 2 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-127 python benchmark.py -s 72t -b 4 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-127 python benchmark.py -s 72t -b 8  -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-127 python benchmark.py -s 72t -b 16 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-127 python benchmark.py -s 72t -b 32 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-127 python benchmark.py -s 72t -b 64 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/

numactl -N 0 -m 0 -C 0-55,112-139 python benchmark.py -s 84t -b 1 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-139 python benchmark.py -s 84t -b 2 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-139 python benchmark.py -s 84t -b 4 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-139 python benchmark.py -s 84t -b 8  -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-139 python benchmark.py -s 84t -b 16 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-139 python benchmark.py -s 84t -b 32 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/
numactl -N 0 -m 0 -C 0-55,112-139 python benchmark.py -s 84t -b 64 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/

