# Unfortunately, 2.8.7 is the last version supported by Travis
cmake_minimum_required (VERSION 2.8.7)
project (TestProject)
set(CXX_STANDARD "c++11")
include_directories(include)
add_subdirectory (tests)
