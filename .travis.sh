#!/bin/bash

if [ "$CLANG_TIDY" == 1 ]; then
    clang-tidy race.cpp -- -Iinclude -std=c++11
    exit 0;
fi

if [ "$TOOLCHAIN" == "analyze" ]; then
    exit 0;
fi    
if [ "$VALGRIND_ENABLED" == 1 ]; then
    valgrind --leak-check=full --error-exitcode=1 ./race;
else
    ./race ;
fi
