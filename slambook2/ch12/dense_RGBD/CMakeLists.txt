cmake_minimum_required(VERSION 3.20 )

set(CMAKE_BUILD_TYPE Release)
set(CMAKE_CXX_STANDARD 11)

include("deps.cmake")

add_executable(pointcloud_mapping pointcloud_mapping.cpp)
target_link_libraries(pointcloud_mapping ${OpenCV_LIBS} ${PCL_LIBRARIES} Eigen3::Eigen)

add_executable(octomap_mapping octomap_mapping.cpp)
target_link_libraries(octomap_mapping ${OpenCV_LIBS} ${PCL_LIBRARIES} ${OCTOMAP_LIBRARIES})

add_executable(surfel_mapping surfel_mapping.cpp)
target_link_libraries(surfel_mapping ${OpenCV_LIBS} ${PCL_LIBRARIES})

# 拷贝目录
execute_process(
    COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_CURRENT_SOURCE_DIR}/data ${CMAKE_CURRENT_BINARY_DIR}/data
)