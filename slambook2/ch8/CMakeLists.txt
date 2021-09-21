cmake_minimum_required(VERSION 3.20)
project(ch8)

set(CMAKE_BUILD_TYPE "Release")
add_definitions("-DENABLE_SSE")
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${SSE_FLAGS} -g -O3 -march=native")

include("deps.cmake")

add_executable(optical_flow optical_flow.cpp)
target_link_libraries(optical_flow
    ${OpenCV_LIBS}
    Eigen3::Eigen
)

add_executable(direct_method direct_method.cpp)
target_link_libraries(direct_method
    ${OpenCV_LIBS}
    ${Pangolin_LIBRARIES}
    Sophus::Sophus
)
set_target_properties(direct_method
    PROPERTIES
    CXX_STANDARD 17
)


# 拷贝文件
execute_process(
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/000001.png ${CMAKE_CURRENT_BINARY_DIR}/
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/000002.png ${CMAKE_CURRENT_BINARY_DIR}/
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/000003.png ${CMAKE_CURRENT_BINARY_DIR}/
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/000004.png ${CMAKE_CURRENT_BINARY_DIR}/
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/000005.png ${CMAKE_CURRENT_BINARY_DIR}/
    
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/left.png ${CMAKE_CURRENT_BINARY_DIR}/

    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/LK1.png ${CMAKE_CURRENT_BINARY_DIR}/
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/LK2.png ${CMAKE_CURRENT_BINARY_DIR}/

    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/disparity.png ${CMAKE_CURRENT_BINARY_DIR}/
)