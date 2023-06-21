numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_s640 -b 1  -r 640 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o infsize_batchsize
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_s640 -b 2  -r 640 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o infsize_batchsize
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_s640 -b 4  -r 640 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o infsize_batchsize
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_s640 -b 8  -r 640 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o infsize_batchsize
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_s640 -b 16 -r 640 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o infsize_batchsize
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_s640 -b 32 -r 640 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o infsize_batchsize
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_s640 -b 64 -r 640 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o infsize_batchsize

numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_s1280 -b 1  -r 1280 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o infsize_batchsize
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_s1280 -b 2  -r 1280 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o infsize_batchsize
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_s1280 -b 4  -r 1280 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o infsize_batchsize
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_s1280 -b 8  -r 1280 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o infsize_batchsize
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_s1280 -b 16 -r 1280 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o infsize_batchsize
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_s1280 -b 32 -r 1280 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o infsize_batchsize
numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_s1280 -b 64 -r 1280 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o infsize_batchsize

