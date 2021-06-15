#!/usr/bin/env bash

function delete_file() {
    file_to_be_deleted="/tmp/daksjfkdjfksaj"
    rm -f "$file_to_be_deleted"
    echo "status is: $?"
    echo "Successfully deleted the file:$file_to_be_deleted"
}

function get_temp_file_name() {
    file_name="/tmp/temp_"
    file_name+=$(date +%s%N)
    echo "File name is:$file_name" 1>&2
    echo "$file_name"
}

function test_me() {
    temp_file="$(get_temp_file_name)"
    trap "delete_file '$temp_file'" EXIT
    touch "$temp_file"
    echo "Done" > $temp_file
    echo "Cretaed temp file:$temp_file"
    while [ -z "" ]
    do
        echo "Interrupt me with Ctrl C to stop" 1>&2
    done
    exit 1
}

function test_me_2() {
    temp_file="$(get_temp_file_name)"
    trap "delete_file '$temp_file'" ERR EXIT SIGINT SIGHUP SIGQUIT
    touch "$temp_file"
    echo "Done" > $temp_file
    echo "Created temp file:$temp_file"
}
echo "Hello"
test_me_2
echo "Done"



