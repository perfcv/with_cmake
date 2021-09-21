# Eigen
find_package(Eigen3 3.3 REQUIRED NO_MODULE)

# OpenCV
find_package(OpenCV REQUIRED)

# 为使用 sophus，需要使用find_package命令找到它
set(Sophus_DIR "/home/zz/artifact/sophus/master/linux-x64/share/sophus/cmake")
find_package(Sophus REQUIRED)
