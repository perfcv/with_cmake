cmake_minimum_required( VERSION 3.20 )
project(examples)

add_executable(coordinateTransform coordinateTransform.cpp)
add_executable(plotTrajectory plotTrajectory.cpp)

target_link_libraries(plotTrajectory ${Pangolin_LIBRARIES} )
set_target_properties(plotTrajectory
    PROPERTIES
    CXX_STANDARD 17
)

target_link_libraries(coordinateTransform Eigen3::Eigen)

# 拷贝轨迹文件
add_custom_command(TARGET plotTrajectory
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/trajectory.txt ${CMAKE_CURRENT_BINARY_DIR}/
)