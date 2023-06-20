(
    trap 'kill 0' SIGINT;
    numactl -N 0 -m 0 -C 0-5     python benchmark.py -s 6t_1p_cpu0 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    wait
)

(
    trap 'kill 0' SIGINT;
    numactl -N 0 -m 0 -C 0-5     python benchmark.py -s 6t_2p_cpu0 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 6-11    python benchmark.py -s 6t_2p_cpu6 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    wait
)

(
    trap 'kill 0' SIGINT;
    numactl -N 0 -m 0 -C 0-5     python benchmark.py -s 6t_4p_cpu0 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 6-11    python benchmark.py -s 6t_4p_cpu6 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 12-17   python benchmark.py -s 6t_4p_cpu12 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 18-23   python benchmark.py -s 6t_4p_cpu18 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    wait
)

(
    trap 'kill 0' SIGINT;
    numactl -N 0 -m 0 -C 0-5     python benchmark.py -s 6t_8p_cpu0 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 6-11    python benchmark.py -s 6t_8p_cpu6 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 12-17   python benchmark.py -s 6t_8p_cpu12 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 18-23   python benchmark.py -s 6t_8p_cpu18 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 24-29   python benchmark.py -s 6t_8p_cpu24 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 30-35   python benchmark.py -s 6t_8p_cpu30 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 36-41   python benchmark.py -s 6t_8p_cpu36 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 42-47   python benchmark.py -s 6t_8p_cpu42 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    wait
)

(
    trap 'kill 0' SIGINT;
    numactl -N 0 -m 0 -C 0-5     python benchmark.py -s 6t_16p_cpu0 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 6-11    python benchmark.py -s 6t_16p_cpu6 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 12-17   python benchmark.py -s 6t_16p_cpu12 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 18-23   python benchmark.py -s 6t_16p_cpu18 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 24-29   python benchmark.py -s 6t_16p_cpu24 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 30-35   python benchmark.py -s 6t_16p_cpu30 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 36-41   python benchmark.py -s 6t_16p_cpu36 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 42-47   python benchmark.py -s 6t_16p_cpu42 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 48-53   python benchmark.py -s 6t_16p_cpu48 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 112-117 python benchmark.py -s 6t_16p_cpu112 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 118-123 python benchmark.py -s 6t_16p_cpu118 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 124-129 python benchmark.py -s 6t_16p_cpu124 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 130-135 python benchmark.py -s 6t_16p_cpu130 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 136-141 python benchmark.py -s 6t_16p_cpu136 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 142-147 python benchmark.py -s 6t_16p_cpu142 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 148-153 python benchmark.py -s 6t_16p_cpu148 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    wait
)

(
    trap 'kill 0' SIGINT;
    numactl -N 0 -m 0 -C 0-5     python benchmark.py -s 6t_32p_cpu0 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 6-11    python benchmark.py -s 6t_32p_cpu6 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 12-17   python benchmark.py -s 6t_32p_cpu12 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 18-23   python benchmark.py -s 6t_32p_cpu18 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 24-29   python benchmark.py -s 6t_32p_cpu24 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 30-35   python benchmark.py -s 6t_32p_cpu30 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 36-41   python benchmark.py -s 6t_32p_cpu36 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 42-47   python benchmark.py -s 6t_32p_cpu42 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 48-53   python benchmark.py -s 6t_32p_cpu48 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 112-117 python benchmark.py -s 6t_32p_cpu112 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 118-123 python benchmark.py -s 6t_32p_cpu118 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 124-129 python benchmark.py -s 6t_32p_cpu124 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 130-135 python benchmark.py -s 6t_32p_cpu130 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 136-141 python benchmark.py -s 6t_32p_cpu136 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 142-147 python benchmark.py -s 6t_32p_cpu142 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 0 -m 0 -C 148-153 python benchmark.py -s 6t_32p_cpu148 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -m 1 -C 56-61   python benchmark.py -s 6t_32p_cpu56 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -m 1 -C 62-67   python benchmark.py -s 6t_32p_cpu62 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -m 1 -C 68-73   python benchmark.py -s 6t_32p_cpu68 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -m 1 -C 74-79   python benchmark.py -s 6t_32p_cpu74 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -m 1 -C 80-85   python benchmark.py -s 6t_32p_cpu80 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -m 1 -C 86-91   python benchmark.py -s 6t_32p_cpu86 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -m 1 -C 92-97   python benchmark.py -s 6t_32p_cpu92 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -m 1 -C 98-103  python benchmark.py -s 6t_32p_cpu98 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -m 1 -C 104-109 python benchmark.py -s 6t_32p_cpu104 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -m 1 -C 168-173 python benchmark.py -s 6t_32p_cpu168 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -m 1 -C 174-179 python benchmark.py -s 6t_32p_cpu174 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -m 1 -C 180-185 python benchmark.py -s 6t_32p_cpu180 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -m 1 -C 186-191 python benchmark.py -s 6t_32p_cpu186 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -m 1 -C 192-197 python benchmark.py -s 6t_32p_cpu192 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -m 1 -C 198-203 python benchmark.py -s 6t_32p_cpu198 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    numactl -N 1 -m 1 -C 204-209 python benchmark.py -s 6t_32p_cpu204 -b 10 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ &
    wait
)
