#!/bin/bash
start=$1
end=$2

files=()
while read log
do
  echo $log
  yyyymmddhh=`echo $log | cut -b 11-20`
  echo $yyyymmddhh
  if test $start -le $yyyymmddhh -a $yyyymmddhh -le $end
  then
    files+=("$log")
  fi
done < <(find . -name "hogelog*")

echo "${files[@]}"
cat "${files[@]}"
