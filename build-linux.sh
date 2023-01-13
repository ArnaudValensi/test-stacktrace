#!/bin/bash

set -x

# For this to work, you need to uncomment `// #define BACKWARD_HAS_DW 1` in backward.cpp.

# COMPILER=g++
COMPILER=clang++

rm -fr *.o main main.exe
$COMPILER -g -c backward.cpp
$COMPILER -g -c main.cpp
$COMPILER -o main *.o -ldw
./main
