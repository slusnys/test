#!/bin/bash

if [ "$CLANG_TIDY" == 1 ]; then
    /usr/bin/clang-tidy-3.7 race.cpp -- -Iinclude -std=c++11
    exit;
fi

if [ "$TOOLCHAIN" == "analyze" ]; then
    exit 0;
fi    
if [ "$VALGRIND_ENABLED" == 1 ]; then
    valgrind --leak-check=full --error-exitcode=1 ./race;
else
    ./race ;
fi
