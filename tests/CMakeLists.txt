# Add executable called "helloDemo" that is built from the source files
# "demo.cxx" and "demo_b.cxx". The extensions are automatically found.
add_executable (test test.cpp)

set(CMAKE_CPP_FLAGS "${CMAKE_CPP_FLAGS} -std=c++11 -g -O2 -Wall -Werror -pedantic -Wextra -Wno-unused-parameter -Wno-unused-local-typedef -Wno-unknown-warning-option")

#target_include_directories (test PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../include)

