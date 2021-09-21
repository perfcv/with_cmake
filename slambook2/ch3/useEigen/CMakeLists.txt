cmake_minimum_required(VERSION 3.20)
project(useEigen)

set(CMAKE_BUILD_TYPE "Release")
set(CMAKE_CXX_FLAGS "-O3")

add_executable(eigenMatrix eigenMatrix.cpp)
target_link_libraries(eigenMatrix PRIVATE Eigen3::Eigen)
