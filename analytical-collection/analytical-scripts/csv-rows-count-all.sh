#!/bin/sh

. ../../.venv/bin/activate

if [ $# -eq 0 ]; then
    current_date=$(date +'%Y-%m-%d')
else
    datetime="$1"
    current_date=$(echo "$datetime" | cut -d ' ' -f 1)
fi

python3 csv-rows-count.py --sources \
"../analytical-data/csv/per-days/lenta/$current_date/publications.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_медведев.csv" \
--labels "общо за деня" "експерт" "захарова" "зеленски" "макгрегор" "путин" "лавров" "медведев" \
--target "../analytical-data/csv/per-days/lenta/$current_date/tags_count.csv"
#
python3 csv-rows-count.py --sources \
"../analytical-data/csv/per-days/regnum/$current_date/publications.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_медведев.csv" \
--labels "общо за деня" "експерт" "захарова" "зеленски" "макгрегор" "путин" "лавров" "медведев" \
--target "../analytical-data/csv/per-days/regnum/$current_date/tags_count.csv"
#
python3 csv-rows-count.py --sources \
"../analytical-data/csv/per-days/ren/$current_date/publications.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_медведев.csv" \
--labels "общо за деня" "експерт" "захарова" "зеленски" "макгрегор" "путин" "лавров" "медведев"  \
--target "../analytical-data/csv/per-days/ren/$current_date/tags_count.csv"
#
python3 csv-rows-count.py --sources \
"../analytical-data/csv/per-days/rg/$current_date/publications.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_медведев.csv" \
--labels "общо за деня" "експерт" "захарова" "зеленски" "макгрегор" "путин" "лавров" "медведев" \
--target "../analytical-data/csv/per-days/rg/$current_date/tags_count.csv"
#
python3 csv-rows-count.py --sources \
"../analytical-data/csv/per-days/ria/$current_date/publications.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_медведев.csv" \
--labels "общо за деня" "експерт" "захарова" "зеленски" "макгрегор" "путин" "лавров" "медведев" \
--target "../analytical-data/csv/per-days/ria/$current_date/tags_count.csv"
#
python3 csv-rows-count.py --sources \
"../analytical-data/csv/per-days/rt/$current_date/publications.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_медведев.csv" \
--labels "общо за деня" "експерт" "захарова" "зеленски" "макгрегор" "путин" "лавров" "медведев" \
--target "../analytical-data/csv/per-days/rt/$current_date/tags_count.csv"
#
python3 csv-rows-count.py --sources \
"../analytical-data/csv/per-days/tass/$current_date/publications.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_медведев.csv" \
--labels "общо за деня" "експерт" "захарова" "зеленски" "макгрегор" "путин" "лавров" "медведев" \
--target "../analytical-data/csv/per-days/tass/$current_date/tags_count.csv"
#
python3 csv-rows-count.py --sources \
"../analytical-data/csv/per-days/vseruss/$current_date/publications.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_медведев.csv" \
--labels "общо за деня" "експерт" "захарова" "зеленски" "макгрегор" "путин" "лавров" "медведев" \
--target "../analytical-data/csv/per-days/vseruss/$current_date/tags_count.csv"
#
python3 csv-rows-count.py --sources \
"../analytical-data/csv/per-days/rbc/$current_date/publications.csv" \
"../analytical-data/csv/per-days/rbc/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/rbc/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/rbc/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/rbc/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/rbc/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/rbc/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/rbc/$current_date/tag_медведев.csv" \
--labels "общо за деня" "експерт" "захарова" "зеленски" "макгрегор" "путин" "лавров" "медведев" \
--target "../analytical-data/csv/per-days/rbc/$current_date/tags_count.csv"
#
python3 csv-rows-count.py --sources \
"../analytical-data/csv/per-days/rambler-world/$current_date/publications.csv" \
"../analytical-data/csv/per-days/rambler-world/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/rambler-world/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/rambler-world/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/rambler-world/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/rambler-world/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/rambler-world/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/rambler-world/$current_date/tag_медведев.csv" \
--labels "общо за деня" "експерт" "захарова" "зеленски" "макгрегор" "путин" "лавров" "медведев" \
--target "../analytical-data/csv/per-days/rambler-world/$current_date/tags_count.csv"
#
python3 csv-rows-count.py --sources \
"../analytical-data/csv/per-days/news-ru/$current_date/publications.csv" \
"../analytical-data/csv/per-days/news-ru/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/news-ru/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/news-ru/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/news-ru/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/news-ru/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/news-ru/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/news-ru/$current_date/tag_медведев.csv" \
--labels "общо за деня" "експерт" "захарова" "зеленски" "макгрегор" "путин" "лавров" "медведев" \
--target "../analytical-data/csv/per-days/news-ru/$current_date/tags_count.csv"
