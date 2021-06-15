#!/usr/bin/env bash

source_dir=""
target_file=""

for arg in "$@"
do
key=$(echo $arg | cut -f1 -d=)
val=$(echo $arg | cut -f2 -d=)
case $key in
source_dir) source_dir=$val;;

target_file) target_file=$val;;

*)
esac
done

#find /Users/kondurj/jk/git-hub-jk-boot-up/bash -name "search_for_file.sh"

results="$(find $source_dir -name $target_file)"

if [[ -z "$results" ]];then
    echo "Target not found"
else
    echo "Target found"
    echo "Target location is $results"
fi







