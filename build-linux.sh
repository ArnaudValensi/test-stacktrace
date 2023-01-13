#!/bin/bash

set -x

COMPILER=g++

rm -fr *.o main main.exe
$COMPILER -g -c backward.cpp
$COMPILER -g -c main.cpp
$COMPILER -o main *.o -ldw
./main
