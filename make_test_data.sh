#!/bin/bash
days=2

for day in $(seq 0 $days)
do
  for hour in $(seq 1 24)
  do
    hours=`expr $day \* 24 + $hour`
    echo $hours
    yyyymmddhh=`date -d "$hours hours ago" +"%Y%m%d%H"`
    echo $yyyymmddhh
    echo $yyyymmddhh > "hogelog_${yyyymmddhh}"
  done
done
