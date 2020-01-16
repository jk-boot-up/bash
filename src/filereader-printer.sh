#!/usr/bin/env bash
parent_dir=`echo $(cd ../ && pwd)`
properties_input=$parent_dir/resources/properties-input.in
output_file=$parent_dir/resources/filtered-properties-output.out
index=0
cp /dev/null $output_file
while read line
    do
        lines[$index]=$line
        index=$(($index+1))
        echo $line >> $output_file
    done < $properties_input

for i in ${lines[@]};
    do
        echo $i;
    done








