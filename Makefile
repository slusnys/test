all: race

#-I/opt/local/include/ 
CPPFLAGS+= -Iinclude -std=c++11 -g -O2 -Wall -Werror -Wno-unused-parameter \
	-Wno-unused-local-typedef -Wno-unknown-warning-option

ifeq ($(TOOLCHAIN),analyze)
	CPPFLAGS+=--analyze
endif

ifeq ($(TSAN),1)
	CPPFLAGS+=-fsanitize=thread
endif

ifeq ($(ASAN),1)
	CPPFLAGS+=-fsanitize=address
endif

race: race.cpp

# todo: consider compiling with -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-inline to improve the
# usefulness of valgrind's error output
