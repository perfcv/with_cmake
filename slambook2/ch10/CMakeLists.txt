cmake_minimum_required(VERSION 3.20)
project(pose_graph)

set(CMAKE_BUILD_TYPE "Release")
set(CMAKE_CXX_STANDARD 11)

include("deps.cmake")

add_executable(pose_graph_g2o_SE3 pose_graph_g2o_SE3.cpp)
target_link_libraries(pose_graph_g2o_SE3
    g2o::core g2o::stuff g2o::types_slam3d
    ${CHOLMOD_LIBRARIES}
    Eigen3::Eigen
)

add_executable(pose_graph_g2o_lie pose_graph_g2o_lie_algebra.cpp)
target_link_libraries(pose_graph_g2o_lie
    g2o::core g2o::stuff
    ${CHOLMOD_LIBRARIES}
    Sophus::Sophus
    Eigen3::Eigen
)

# 拷贝文件
execute_process(
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/sphere.g2o ${CMAKE_CURRENT_BINARY_DIR}
)