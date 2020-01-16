#!/usr/bin/env bash
n=1
while read line;
do
    echo "Line No. $n : $line"
    n=$((n+1))
done < filereader-11.sh
