if(EXISTS "$ENV{COVERAGE}")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0 --coverage")
else()
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2")  
endif(EXISTS "$ENV{COVERAGE}")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -g -Wall -Werror -pedantic -Wextra -Wno-unused-parameter -Wno-unused-local-typedef -Wno-unknown-warning-option")
add_executable (test test.cpp)

