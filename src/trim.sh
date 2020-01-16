#!/usr/bin/env bash
text="  Hello World! ABCD   "

echo  "=$text="
trimmed=$(echo $text | sed 's/^[ \t]*//;s/[ \t]*$//')

echo  "=$trimmed="
