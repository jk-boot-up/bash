#!/usr/bin/env bash
nn=$'\n'
a="hello"
a+=$nn
a+="111"
a+=$nn
a+="-------END--------"
echo $a
printf '%s' "${a}"
k=xyz
b="------start------
$k
--------------------end----"
printf %s $b > hello
echo $hello

