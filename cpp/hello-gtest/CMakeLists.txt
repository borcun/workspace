cmake_minimum_required(VERSION 3.15)
project(arithmetic)

# add subdirectories under root cmake
add_subdirectory(lib)
add_subdirectory(src)
# test directory that executes google test
add_subdirectory(test)
