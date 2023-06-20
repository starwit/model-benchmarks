(
    trap 'kill 0' SIGINT;
    numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_1p_1 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    wait
)

wait

(
    trap 'kill 0' SIGINT;
    numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_2p_1 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ & 
    numactl -N 0 -C 112-159 -m 0 python benchmark.py -s 48t_2p_2 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    wait
)

wait

(
    trap 'kill 0' SIGINT;
    numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_3p_1 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -C 112-159 -m 0 python benchmark.py -s 48t_3p_2 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -C 56-103 -m 1 python benchmark.py -s 48t_3p_3 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    wait
)

wait

(
    trap 'kill 0' SIGINT;
    numactl -N 0 -C 0-47 -m 0 python benchmark.py -s 48t_4p_1 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -C 112-159 -m 0 python benchmark.py -s 48t_4p_2 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -C 56-103 -m 1 python benchmark.py -s 48t_4p_3 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -C 168-215 -m 1 python benchmark.py -s 48t_4p_4 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    wait
)

wait