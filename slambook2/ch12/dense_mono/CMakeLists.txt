cmake_minimum_required(VERSION 3.20 )
project(dense_monocular)

set(CMAKE_BUILD_TYPE "Release")
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "-march=native")

include("deps.cmake")

add_executable(dense_mapping dense_mapping.cpp)
target_link_libraries(dense_mapping ${OpenCV_LIBS} Sophus::Sophus)