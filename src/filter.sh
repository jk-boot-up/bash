#!/usr/bin/env bash
parent_dir=`echo $(cd ../ && pwd)`
resources_dir=$parent_dir/resources
inputFile=$resources_dir/properties-input.in
index=0
while read line
    do
        trimmed_line=$(echo $line | sed 's/^[ \t]*//;s/[ \t]*$//')
        required_field=$(echo $trimmed_line | sed 's/^xyz_function_a=//')
        echo "=$required_field="
        echo $trimmed_line
        lines[$index]=trimmed_line
        index=$(($index+1))
    done < $inputFile




