cmake_minimum_required(VERSION 3.15)
project(arithmetic)
add_library(${PROJECT_NAME} src/arithmetic.cpp)
target_include_directories(${PROJECT_NAME} PUBLIC include)
