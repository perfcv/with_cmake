cmake_minimum_required(VERSION 3.20)

project(bundle_adjustment)
set(CMAKE_BUILD_TYPE "Release")
set(CMAKE_CXX_STANDARD 11)

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

include("deps.cmake")

set(G2O_LIBS
    g2o::csparse_extension g2o::stuff g2o::core ${CSPARSE_LIBRARY}
)

add_library(bal_common common.cpp)
target_link_libraries(bal_common PUBLIC Eigen3::Eigen)

add_executable(bundle_adjustment_g2o bundle_adjustment_g2o.cpp)
add_executable(bundle_adjustment_ceres bundle_adjustment_ceres.cpp)

target_link_libraries(bundle_adjustment_ceres ${CERES_LIBRARIES} bal_common)
target_link_libraries(bundle_adjustment_g2o ${G2O_LIBS} bal_common Sophus::Sophus)
target_include_directories(bundle_adjustment_g2o PUBLIC ${CSPARSE_INCLUDE_DIR})

# 拷贝文件
execute_process(
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/problem-16-22106-pre.txt ${CMAKE_CURRENT_BINARY_DIR}/bal_data.txt
)