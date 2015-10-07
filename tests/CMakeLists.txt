# Add executable called "helloDemo" that is built from the source files
# "demo.cxx" and "demo_b.cxx". The extensions are automatically found.
add_executable (test test.cpp)
target_include_directories (test PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../include)
