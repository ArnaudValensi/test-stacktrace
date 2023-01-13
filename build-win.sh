#!/bin/bash

set -x

rm -fr *.o main main.exe
g++.exe -g -c backward.cpp
g++.exe -g -c main.cpp
g++.exe -o main *.o -mconsole -lmsvcr90 -ldbghelp -lpsapi 
./main.exe
