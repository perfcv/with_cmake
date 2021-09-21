cmake_minimum_required(VERSION 3.20)
project(chapter3)

# 添加Eigen依赖
find_package(Eigen3 3.3 REQUIRED NO_MODULE)

# 添加Pangolin依赖
set(Pangolin_DIR "/home/zz/artifact/pangolin/master/linux-x64/lib/cmake/Pangolin")
find_package( Pangolin REQUIRED)


# 加入各子工程
add_subdirectory(useEigen)
add_subdirectory(useGeometry)
add_subdirectory(visualizeGeometry)
add_subdirectory(examples)
