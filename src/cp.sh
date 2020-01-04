#!/usr/bin/env bash

# https://www.computerhope.com/unix/ucp.htm
# -v verbose option
# copy f1, f2 and f3 file to t1 dir
mkdir -p ../target/t1

mkdir -p ../target/t2

#chmod 755 ../target/t1

cp dollar.sh mkdir.sh ../target/t1/

cp -p dollar.sh mkdir.sh ../target/t2/

# -R,
# -r,
# --recursive Copy directories recursively.
# --preserve=[attr_list]
# --preserve=mode,ownership,timestamps.
