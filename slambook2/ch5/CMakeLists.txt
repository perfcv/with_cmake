cmake_minimum_required(VERSION 3.20)

project(ch5)

set(CMAKE_BUILD_TYPE "Release")

# 添加c++ 11标准支持
set(CMAKE_CXX_STANDARD 11)

# 添加Pangolin依赖
set(Pangolin_DIR "/home/zz/artifact/pangolin/master/linux-x64/lib/cmake/Pangolin")
find_package( Pangolin REQUIRED)

# 为使用 sophus，需要使用find_package命令找到它
set(Sophus_DIR "/home/zz/artifact/sophus/master/linux-x64/share/sophus/cmake")
find_package(Sophus REQUIRED)

# Eigen
find_package(Eigen3 3.3 REQUIRED NO_MODULE)

# 寻找OpenCV库
#set(OpenCV_DIR "/home/zz/lib/opencv/4.5.4-pre-static-mt/lib/cmake/opencv4")
# 需要 opencv_contrib 中的 stereo 等模块。 简单起见， 直接 apt 安装 libopencv-contrib-dev
find_package(OpenCV REQUIRED)

add_subdirectory(imageBasics)
add_subdirectory(stereo)
add_subdirectory(rgbd)
