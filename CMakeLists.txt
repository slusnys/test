cmake_minimum_required(VERSION 2.8)

project(TestProject)

set(CMAKE_MODULE_PATH ${TestProject_SOURCE_DIR}/cmake)

# find Boost
find_package(Boost 1.48 REQUIRED)
include_directories(SYSTEM ${Boost_INCLUDE_DIRS})

include_directories(include)

# configure cmake config file
configure_file(
  cmake/TestProjectConfig.cmake.in
  ${TestProject_BINARY_DIR}/TestProjectConfig.cmake
  @ONLY
)

# install cmake config file
install(
  FILES ${TestProject_BINARY_DIR}/TestProjectConfig.cmake
  DESTINATION lib/cmake/TestProject
)

# install header files
install(DIRECTORY include/boost DESTINATION include/testProject)

#
#
#

set(EXAMPLES
        race
        )
        
# boost library link dependencies
set(EXAMPLE_BOOST_COMPONENTS program_options thread unit_test_framework)

find_package(Boost 1.48 REQUIRED COMPONENTS ${EXAMPLE_BOOST_COMPONENTS})
include_directories(SYSTEM ${Boost_INCLUDE_DIRS})

foreach(EXAMPLE ${EXAMPLES})
  add_executable(${EXAMPLE} ${EXAMPLE}.cpp)
  target_link_libraries(${EXAMPLE} ${Boost_LIBRARIES})

  # add example program to list of tests (if testing is enabled)
#  if(${BOOST_COMPUTE_BUILD_TESTS})
#    add_test("example.${EXAMPLE}" ${EXAMPLE})
#  endif()
endforeach()
