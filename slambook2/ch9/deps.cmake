# OpenCV
find_package(OpenCV REQUIRED)

# g2o
set(g2o_DIR "/home/zz/artifact/g2o/master/linux-x64/lib/cmake/g2o")
find_package(g2o REQUIRED)

# Ceres
find_package(Ceres REQUIRED)
#CERES_VERSION
#CERES_INCLUDE_DIRS
#CERES_LIBRARIES

# Eigen
find_package(Eigen3 3.3 REQUIRED NO_MODULE)

# 为使用 sophus，需要使用find_package命令找到它
set(Sophus_DIR "/home/zz/artifact/sophus/master/linux-x64/share/sophus/cmake")
find_package(Sophus REQUIRED)

find_package(CSparse REQUIRED)
# 需要提供 FindCSparse.cmake
#message(STATUS ">>> CSPARSE_INCLUDE_DIR: ${CSPARSE_INCLUDE_DIR}")
#message(STATUS ">>> CSPARSE_LIBRARY: ${CSPARSE_LIBRARY}")