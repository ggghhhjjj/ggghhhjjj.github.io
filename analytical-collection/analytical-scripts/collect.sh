#!/bin/sh

sh "./rss-all.sh"
sh "./csv-per-date-all.sh"
sh "./csv-find-string-all.sh"
sh "./csv-rows-count-all.sh"
sh "csv-to-markdown-all.sh"

echo "Done."