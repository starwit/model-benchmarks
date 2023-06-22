numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48c -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o amx_verification

ONEDNN_ENABLE_MAX_CPU_ISA=ON ONEDNN_MAX_CPU_ISA=AVX512_CORE_AMX \
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48c_env -b 8 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o amx_verification

numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48c_bf16 -b 8 -q bfloat16 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o amx_verification

ONEDNN_ENABLE_MAX_CPU_ISA=ON ONEDNN_MAX_CPU_ISA=AVX512_CORE_AMX \
numactl -N 0 -m 0 -C 0-47 python benchmark.py -s 48c_bf16_env -b 8 -q bfloat16 -i ~/workspaces/datasets/carmel/ArchWestMainStreetEB/ -o amx_verification