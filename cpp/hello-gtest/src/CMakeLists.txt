cmake_minimum_required(VERSION 3.15)
project(arithmetic-driver)
add_executable(${PROJECT_NAME} main.cpp)

if(NOT DEFINED CMAKE_BUILD_TYPE)
  message("not defined build type, it is set to debug by default")
  set(CMAKE_BUILD_TYPE Debug)
endif()

target_include_directories(${PROJECT_NAME} PUBLIC ../lib/include)
target_link_directories(${PROJECT_NAME} PUBLIC ../lib/${CMAKE_BUILD_TYPE})
target_link_libraries(${PROJECT_NAME} PUBLIC arithmetic)
