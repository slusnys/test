all: race
CPPFLAGS+=-I/opt/local/include/ -std=c++11 -g -O2 -Wall -Werror -Wno-unused-parameter -Wno-unused-local-typedef	 -Wno-unknown-warning-option

# todo: consider compiling with -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-inline to improve the
# usefulness of valgrind's error output
