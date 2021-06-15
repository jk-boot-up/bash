#!/bin/bash
for arg in "$@"
do
index=$(echo $arg | cut -f1 -d=)
echo $index
val=$(echo $arg | cut -f2 -d=)
echo $val
case $index in
a) x=$val;;

b) y=$val;;

*)
esac
done
((result=x+y))
echo "X+Y=$result"