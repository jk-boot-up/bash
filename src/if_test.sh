#!/usr/bin/env bash

a=""
b="123"
if [[ -z "$a" && -n "$b" ]]; then
    echo "a is empty"
else
    echo "$b"
fi

