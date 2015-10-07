#!/bin/bash

BINARY=tests/test

if [ "$CLANG_TIDY" == 1 ]; then
    PWD=`pwd`
    /usr/bin/clang-tidy-3.7 tests/test.cpp -- -I"$PWD"/include -std=c++11
    exit;
fi

if [ "$TOOLCHAIN" == "analyze" ]; then
    exit 0;
fi    
if [ "$VALGRIND_ENABLED" == 1 ]; then
    valgrind --leak-check=full --error-exitcode=1 ./$BINARY;
else
    ./$BINARY
fi
