project(Robot)

set(CMAKE_BUILD_TYPE release)
cmake_minimum_required(VERSION 2.4)

add_library(Megatron megatron.cpp)

add_executable(
   Robot
   main.cpp
)

target_link_libraries(
  Robot
  Megatron
)