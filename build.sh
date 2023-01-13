#!/bin/bash

set -x

rm -fr *.o main
clang++ -g -std=c++20 -c backward.cpp
clang++ -g -std=c++20 -c main.cpp
clang++ -o main *.o
./main
