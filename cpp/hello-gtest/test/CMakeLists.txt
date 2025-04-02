cmake_minimum_required(VERSION 3.15)
project(arithmetic-test)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# to enable testing
enable_testing()

add_executable(${PROJECT_NAME} test.cpp)

target_include_directories(${PROJECT_NAME} PUBLIC
  ../lib/include
  ../externals/googletest/googletest/include
)

if(NOT DEFINED CMAKE_BUILD_TYPE)
  message("not defined build type, it is set to debug by default")
  set(CMAKE_BUILD_TYPE Debug)
endif()

target_link_directories(${PROJECT_NAME} PUBLIC
  ../lib/${CMAKE_BUILD_TYPE}
  ../externals/googletest/build/lib/${CMAKE_BUILD_TYPE}
)

target_link_libraries(${PROJECT_NAME} PUBLIC
  arithmetic
  gtest
  gtest_main
)

# to add test for project
add_test(NAME ${PROJECT_NAME} COMMAND ${PROJECT_NAME})

execute_process(COMMAND ${CMAKE_COMMAND} -E copy
  ${CMAKE_SOURCE_DIR}/externals/googletest/build/bin/${CMAKE_BUILD_TYPE}/gtest.dll
  ${CMAKE_BINARY_DIR}/test/${CMAKE_BUILD_TYPE}
)
