cmake_minimum_required(VERSION 3.20 )
project(myslam)

set(CMAKE_BUILD_TYPE Release)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS_RELEASE  "-fopenmp -pthread")

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake_modules)

include("deps.cmake")

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

set(THIRD_PARTY_LIBS
        ${OpenCV_LIBS}
        Sophus::Sophus
        ${Pangolin_LIBRARIES} GL GLU GLEW #glut
        g2o::core g2o::stuff g2o::types_sba g2o::solver_csparse g2o::csparse_extension
        GTest::gtest
        ${GLOG_LIBRARIES}
        ${GFLAGS_LIBRARIES}
        pthread
        ${CSPARSE_LIBRARY}
        Eigen3::Eigen
        )

enable_testing()

############### source and test ######################
include_directories(${PROJECT_SOURCE_DIR}/include)
add_subdirectory(src)
add_subdirectory(test)
add_subdirectory(app)

# 拷贝文件
execute_process(
    COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_SOURCE_DIR}/config ${EXECUTABLE_OUTPUT_PATH}/config
)