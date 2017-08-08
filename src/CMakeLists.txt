cmake_minimum_required(VERSION 2.4)

project(Robot)

set(CMAKE_BUILD_TYPE release)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

include_directories (
   "${PROJECT_BINARY_DIR}"
   "${PROJECT_SOURCE_DIR}/include"
)

add_subdirectory(
   include
)

add_executable(
   Robot
   main.cpp
)

target_link_libraries(
  Robot
  Megatron
)

install(
   FILES "${PROJECT_BINARY_DIR}/megatron.h" DESTINATION include
)