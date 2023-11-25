#!/bin/sh

source ../../venv/bin/activate

python3 csv-to-json.py "../analytical-data/csv/lenta.csv" "../analytical-data/json/lenta.json"
python3 csv-to-json.py "../analytical-data/csv/regnum.csv" "../analytical-data/json/regnum.json" "%a, %d %b %Y %H:%M:%S %Z"
python3 csv-to-json.py "../analytical-data/csv/ren.csv" "../analytical-data/json/ren.json"
python3 csv-to-json.py "../analytical-data/csv/rg.csv" "../analytical-data/json/rg.json"
python3 csv-to-json.py "../analytical-data/csv/ria.csv" "../analytical-data/json/ria.json"
python3 csv-to-json.py "../analytical-data/csv/rt.csv" "../analytical-data/json/rt.json"
python3 csv-to-json.py "../analytical-data/csv/tass.csv" "../analytical-data/json/tass.json"
python3 csv-to-json.py "../analytical-data/csv/vseruss.csv" "../analytical-data/json/vseruss.json"
