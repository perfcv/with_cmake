# OpenCV
find_package(OpenCV REQUIRED)

# Eigen
find_package(Eigen3 3.3 REQUIRED NO_MODULE)

# 添加Pangolin依赖
set(Pangolin_DIR "/home/zz/artifact/pangolin/master/linux-x64/lib/cmake/Pangolin")
find_package(Pangolin REQUIRED)

# 为使用 sophus，需要使用find_package命令找到它
set(Sophus_DIR "/home/zz/artifact/sophus/master/linux-x64/share/sophus/cmake")
find_package(Sophus REQUIRED)

# g2o
set(g2o_DIR "/home/zz/artifact/g2o/master/linux-x64/lib/cmake/g2o")
find_package(g2o REQUIRED)

# glog
find_package(Glog REQUIRED)
include_directories(${GLOG_INCLUDE_DIRS})

# gtest
set(GTest_DIR "/home/zz/artifact/googletest/1.11.0/linux-x64/lib/cmake/GTest")
find_package(GTest REQUIRED)

# gflags
find_package(GFlags REQUIRED)
include_directories(${GFLAGS_INCLUDE_DIRS})

# csparse
find_package(CSparse REQUIRED)
include_directories(${CSPARSE_INCLUDE_DIR})