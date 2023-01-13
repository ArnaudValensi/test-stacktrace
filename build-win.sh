#!/bin/bash

set -x
set -e

COMPILER=clang++.exe

rm -fr *.o main main.exe main.pdb
$COMPILER -g -gcodeview -c backward.cpp
$COMPILER -g -gcodeview -c main.cpp
$COMPILER -o main *.o -ldbghelp -lucrt -Wl,--pdb= -fuse-ld=lld

./main.exe
