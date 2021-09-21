cmake_minimum_required(VERSION 3.20)
project(ch6)

set(CMAKE_BUILD_TYPE Release)
set(CMAKE_CXX_STANDARD 14)

# OpenCV
find_package(OpenCV REQUIRED)

# Ceres
find_package(Ceres REQUIRED)
#CERES_VERSION
#CERES_INCLUDE_DIRS
#CERES_LIBRARIES

# g2o
set(g2o_DIR "/home/zz/artifact/g2o/master/linux-x64/lib/cmake/g2o")
find_package(g2o REQUIRED)

# Eigen
find_package(Eigen3 3.3 REQUIRED NO_MODULE)

add_executable(gaussNewton gaussNewton.cpp)
target_link_libraries(gaussNewton ${OpenCV_LIBS} Eigen3::Eigen)

add_executable(ceresCurveFitting ceresCurveFitting.cpp)
target_link_libraries(ceresCurveFitting ${OpenCV_LIBS} ${CERES_LIBRARIES} Eigen3::Eigen)

add_executable(g2oCurveFitting g2oCurveFitting.cpp)
target_link_libraries(g2oCurveFitting
    ${OpenCV_LIBS}
    g2o::core g2o::stuff
    Eigen3::Eigen
)
