cmake_minimum_required( VERSION 3.20 )
project( geometry )

add_executable(eigenGeometry eigenGeometry.cpp)
target_link_libraries(eigenGeometry PRIVATE Eigen3::Eigen)