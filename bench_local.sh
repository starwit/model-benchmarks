python benchmark.py -b 1 -s noipex --no-ipex -o results/temp_local
python benchmark.py -b 2 -s noipex --no-ipex -o results/temp_local
python benchmark.py -b 4 -s noipex --no-ipex -o results/temp_local
python benchmark.py -b 8 -s noipex --no-ipex -o results/temp_local
python benchmark.py -b 16 -s noipex --no-ipex -o results/temp_local

python benchmark.py -b 1 -s ipex --ipex -o results/temp_local
python benchmark.py -b 2 -s ipex --ipex -o results/temp_local
python benchmark.py -b 4 -s ipex --ipex -o results/temp_local
python benchmark.py -b 8 -s ipex --ipex -o results/temp_local
python benchmark.py -b 16 -s ipex --ipex -o results/temp_local