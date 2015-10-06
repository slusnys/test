#!/bin/bash
if [ "$TOOLCHAIN" == "analyze" ]; then
    exit 0;
fi    
if [ "$VALGRIND_ENABLED" == 1 ]; then
    valgrind --leak-check=full --error-exitcode=1 ./race;
else
    ./race ;
fi
