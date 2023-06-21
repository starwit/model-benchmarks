(
    trap 'kill 0' SIGINT;
    numactl -N 0 -m 0 -C 0-13   python benchmark.py -s 14c_4p_cpu0  -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    numactl -N 0 -m 0 -C 14-27  python benchmark.py -s 14c_4p_cpu14 -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    numactl -N 1 -m 1 -C 56-69  python benchmark.py -s 14c_4p_cpu56 -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    numactl -N 1 -m 1 -C 70-83  python benchmark.py -s 14c_4p_cpu70 -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    wait
)

(
    trap 'kill 0' SIGINT;
    numactl -N 0 -m 0 -C 0-13   python benchmark.py -s 14c_8p_cpu0  -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    numactl -N 0 -m 0 -C 14-27  python benchmark.py -s 14c_8p_cpu14 -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    numactl -N 0 -m 0 -C 28-41  python benchmark.py -s 14c_8p_cpu28 -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    numactl -N 0 -m 0 -C 42-55  python benchmark.py -s 14c_8p_cpu42 -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    numactl -N 1 -m 1 -C 56-69  python benchmark.py -s 14c_8p_cpu56 -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    numactl -N 1 -m 1 -C 70-83  python benchmark.py -s 14c_8p_cpu70 -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    numactl -N 1 -m 1 -C 84-97  python benchmark.py -s 14c_8p_cpu84 -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    numactl -N 1 -m 1 -C 98-111 python benchmark.py -s 14c_8p_cpu98 -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    wait
)

(
    trap 'kill 0' SIGINT;
    numactl -N 0 -m 0 -C 0-27   python benchmark.py -s 28c_2p_cpu0  -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    numactl -N 1 -m 1 -C 56-83  python benchmark.py -s 28c_2p_cpu56 -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    wait
)

(
    trap 'kill 0' SIGINT;
    numactl -N 0 -m 0 -C 0-27   python benchmark.py -s 28c_4p_cpu0  -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    numactl -N 0 -m 0 -C 28-55  python benchmark.py -s 28c_4p_cpu28 -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    numactl -N 1 -m 1 -C 56-83  python benchmark.py -s 28c_4p_cpu56 -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    numactl -N 1 -m 1 -C 84-111 python benchmark.py -s 28c_4p_cpu84 -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o parallel &
    wait
)