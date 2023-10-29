#!/bin/sh

. ../../.venv/bin/activate

if [ $# -eq 0 ]; then
    current_date=$(date +'%Y-%m-%d')
    current_datetime=$(date +'%Y-%m-%d %H:%M:%S %Z')
else
    current_date=$(echo "$1" | cut -d ' ' -f 1)
    current_datetime="$1"
fi


python3 csv-to-markdown.py --csv \
"../analytical-data/csv/per-days/lenta/$current_date/publications.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_медведев.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tag_молдова.csv" \
"../analytical-data/csv/per-days/lenta/$current_date/tags_count.csv" \
--template "media-daily-stats.md.j2" \
--file "../../_medias/$current_date-lenta.md" \
--title "lenta.ru" \
--datetime "$current_datetime"
#
python3 csv-to-markdown.py --csv \
"../analytical-data/csv/per-days/regnum/$current_date/publications.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_медведев.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tag_молдова.csv" \
"../analytical-data/csv/per-days/regnum/$current_date/tags_count.csv" \
--template "media-daily-stats.md.j2" \
--file "../../_medias/$current_date-regnum.md" \
--title "regnum.ru" \
--datetime "$current_datetime"
#
python3 csv-to-markdown.py --csv \
"../analytical-data/csv/per-days/ren/$current_date/publications.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_медведев.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tag_молдова.csv" \
"../analytical-data/csv/per-days/ren/$current_date/tags_count.csv" \
--template "media-daily-stats.md.j2" \
--file "../../_medias/$current_date-ren.md" \
--title "ren.ru" \
--datetime "$current_datetime"
#
python3 csv-to-markdown.py --csv \
"../analytical-data/csv/per-days/rg/$current_date/publications.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_медведев.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tag_молдова.csv" \
"../analytical-data/csv/per-days/rg/$current_date/tags_count.csv" \
--template "media-daily-stats.md.j2" \
--file "../../_medias/$current_date-rg.md" \
--title "rg.ru" \
--datetime "$current_datetime"
#
python3 csv-to-markdown.py --csv \
"../analytical-data/csv/per-days/ria/$current_date/publications.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_медведев.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tag_молдова.csv" \
"../analytical-data/csv/per-days/ria/$current_date/tags_count.csv" \
--template "media-daily-stats.md.j2" \
--file "../../_medias/$current_date-ria.md" \
--title "ria.ru" \
--datetime "$current_datetime"
#
python3 csv-to-markdown.py --csv \
"../analytical-data/csv/per-days/rt/$current_date/publications.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_медведев.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tag_молдова.csv" \
"../analytical-data/csv/per-days/rt/$current_date/tags_count.csv" \
--template "media-daily-stats.md.j2" \
--file "../../_medias/$current_date-rt.md" \
--title "rt.ru" \
--datetime "$current_datetime"
#
python3 csv-to-markdown.py --csv \
"../analytical-data/csv/per-days/tass/$current_date/publications.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_медведев.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tag_молдова.csv" \
"../analytical-data/csv/per-days/tass/$current_date/tags_count.csv" \
--template "media-daily-stats.md.j2" \
--file "../../_medias/$current_date-tass.md" \
--title "tass.ru" \
--datetime "$current_datetime"
#
python3 csv-to-markdown.py --csv \
"../analytical-data/csv/per-days/vseruss/$current_date/publications.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_медведев.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tag_молдова.csv" \
"../analytical-data/csv/per-days/vseruss/$current_date/tags_count.csv" \
--template "media-daily-stats.md.j2" \
--file "../../_medias/$current_date-vseruss.md" \
--title "vseruss.ru" \
--datetime "$current_datetime"
#
python3 csv-to-markdown.py --csv \
"../analytical-data/csv/per-days/rbc/$current_date/publications.csv" \
"../analytical-data/csv/per-days/rbc/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/rbc/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/rbc/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/rbc/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/rbc/$current_date/tag_медведев.csv" \
"../analytical-data/csv/per-days/rbc/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/rbc/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/rbc/$current_date/tag_молдова.csv" \
"../analytical-data/csv/per-days/rbc/$current_date/tags_count.csv" \
--template "media-daily-stats.md.j2" \
--file "../../_medias/$current_date-rbc.md" \
--title "rbc.ru" \
--datetime "$current_datetime"
#
python3 csv-to-markdown.py --csv \
"../analytical-data/csv/per-days/rambler-world/$current_date/publications.csv" \
"../analytical-data/csv/per-days/rambler-world/$current_date/tag_путин.csv" \
"../analytical-data/csv/per-days/rambler-world/$current_date/tag_зеленски.csv" \
"../analytical-data/csv/per-days/rambler-world/$current_date/tag_захарова.csv" \
"../analytical-data/csv/per-days/rambler-world/$current_date/tag_лавров.csv" \
"../analytical-data/csv/per-days/rambler-world/$current_date/tag_медведев.csv" \
"../analytical-data/csv/per-days/rambler-world/$current_date/tag_макгрегор.csv" \
"../analytical-data/csv/per-days/rambler-world/$current_date/tag_експерт.csv" \
"../analytical-data/csv/per-days/rambler-world/$current_date/tag_молдова.csv" \
"../analytical-data/csv/per-days/rambler-world/$current_date/tags_count.csv" \
--template "media-daily-stats.md.j2" \
--file "../../_medias/$current_date-rambler-world.md" \
--title "ramble.ru/world" \
--datetime "$current_datetime"
