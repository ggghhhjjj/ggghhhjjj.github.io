#!/bin/sh

current_date=$(date +'%Y-%m-%d')

python3 csv-rows-count.py --sources "../analytical-data/csv/per-days/lenta/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_путин.csv" \
--labels "експерт" "захарова" "зеленски" "макгрегор" "путин" \
--target "../analytical-data/csv/per-days/lenta/$current_date/tag_statistics.csv" "$@"
#
python3 csv-rows-count.py --sources "../analytical-data/csv/per-days/regnum/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_путин.csv" \
--labels "експерт" "захарова" "зеленски" "макгрегор" "путин" \
--target "../analytical-data/csv/per-days/regnum/$current_date/tag_statistics.csv" "$@"
#
python3 csv-rows-count.py --sources "../analytical-data/csv/per-days/ren/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_путин.csv" \
--labels "експерт" "захарова" "зеленски" "макгрегор" "путин" \
--target "../analytical-data/csv/per-days/ren/$current_date/tag_statistics.csv" "$@"
#
python3 csv-rows-count.py --sources "../analytical-data/csv/per-days/rg/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_путин.csv" \
--labels "експерт" "захарова" "зеленски" "макгрегор" "путин" \
--target "../analytical-data/csv/per-days/rg/$current_date/tag_statistics.csv" "$@"
#
python3 csv-rows-count.py --sources "../analytical-data/csv/per-days/ria/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_путин.csv" \
--labels "експерт" "захарова" "зеленски" "макгрегор" "путин" \
--target "../analytical-data/csv/per-days/ria/$current_date/tag_statistics.csv" "$@"
#
python3 csv-rows-count.py --sources "../analytical-data/csv/per-days/rt/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_путин.csv" \
--labels "експерт" "захарова" "зеленски" "макгрегор" "путин" \
--target "../analytical-data/csv/per-days/rt/$current_date/tag_statistics.csv" "$@"
#
python3 csv-rows-count.py --sources "../analytical-data/csv/per-days/tass/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_путин.csv" \
--labels "експерт" "захарова" "зеленски" "макгрегор" "путин" \
--target "../analytical-data/csv/per-days/tass/$current_date/tag_statistics.csv" "$@"
#
python3 csv-rows-count.py --sources "../analytical-data/csv/per-days/vseruss/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_путин.csv" \
--labels "експерт" "захарова" "зеленски" "макгрегор" "путин" \
--target "../analytical-data/csv/per-days/vseruss/$current_date/tag_statistics.csv" "$@"
