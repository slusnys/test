#-I/opt/local/include/ 
CPPFLAGS+= -I /Users/sslusny/Personal/c++/test/include -std=c++11 -g -O2 -Wall -Werror -pedantic -Wextra -Wno-unused-parameter \
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

all:
	$(MAKE) -C tests CPPFLAGS="$(CPPFLAGS)"

# todo: consider compiling with -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-inline to improve the
# usefulness of valgrind's error output
