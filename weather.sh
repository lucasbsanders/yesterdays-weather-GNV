#!/bin/bash

year=`date -d yesterday +%Y`
month=`date -d yesterday +%m`
day=`date -d yesterday +%d`

curl -s "https://www.wunderground.com/history/airport/KGNV/$year/$month/$day/Da$

max=$(cat gnvweather.txt | cut -f2 -d"," | sort -nr | head -n1)

echo "Yesterday's high was: $max"
