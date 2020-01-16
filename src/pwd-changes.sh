#!/usr/bin/env bash
parent_dir=`echo $(cd ../ && pwd)`

input_file=$parent_dir/resources/properties-input.in

output_file=$parent_dir/resources/filtered-properties-output.out
cp /dev/null $output_file
while IFS= read -r line
do
    echo $line
    echo $line >> $output_file
done < $input_file







