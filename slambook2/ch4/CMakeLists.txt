cmake_minimum_required(VERSION 3.20)
project(useSophus)

include(deps.cmake)

add_executable(useSophus useSophus.cpp)
target_link_libraries(useSophus Sophus::Sophus)

add_subdirectory(example)
