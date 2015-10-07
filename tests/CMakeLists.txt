# Add executable called "helloDemo" that is built from the source files
# "demo.cxx" and "demo_b.cxx". The extensions are automatically found.
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -g -O2 -Wall -Werror -pedantic -Wextra -Wno-unused-parameter -Wno-unused-local-typedef -Wno-unknown-warning-option")
add_executable (test test.cpp)

