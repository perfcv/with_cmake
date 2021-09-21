
# --- Eigen
# sudo apt install libeigen3-dev
find_package(Eigen3 3.3 REQUIRED NO_MODULE)
# target_link_libraries(xxx Eigen3::Eigen)

# --- Pangolin
set(Pangolin_DIR "/home/zz/artifact/pangolin/master/linux-x64/lib/cmake/Pangolin")
find_package(Pangolin REQUIRED)
# target_link_libraries(xxx ${Pangolin_LIBRARIES})

# --- Sophus
set(Sophus_DIR "/home/zz/artifact/sophus/master/linux-x64/share/sophus/cmake")
find_package(Sophus REQUIRED)
# target_link_libraries(xxx Sophus::Sophus)

# --- OpenCV
#set(OpenCV_DIR "/home/zz/lib/opencv/4.5.4-pre-static-mt/lib/cmake/opencv4")
# 需要 opencv_contrib 中的 stereo 等模块。 简单起见， 直接 apt 安装 libopencv-contrib-dev
find_package(OpenCV REQUIRED)
# target_link_libraries(xxx ${OpenCV_LIBS})

# --- Ceres
# sudo apt install libceres-dev
find_package(Ceres REQUIRED)
# ${CERES_VERSION}
# target_include_directories(xxx PUBLIC ${CERES_INCLUDE_DIRS})
# target_link_libraries(xxx ${CERES_LIBRARIES})

# --- g2o
# sudo apt install libcxsparse3
# sudo apt install libsuitesparse-dev
set(g2o_DIR "/home/zz/artifact/g2o/master/linux-x64/lib/cmake/g2o")
find_package(g2o REQUIRED)
# target_link_libraries(xxx g2o::core g2o::stuff ...)

# --- CSparse
find_package(CSparse REQUIRED)
# 需要提供 FindCSparse.cmake. 可从 g2o 官方代码里拷贝。
# target_include_directories(xxx PUBLIC ${CSPARSE_INCLUDE_DIR})
# target_link_libraries(xxx ${CSPARSE_LIBRARY})

# --- DWoB3
set(DBoW3_DIR "/home/zz/artifact/DBoW3/master/linux-x64/lib/cmake/DBoW3")
find_package(DBoW3 REQUIRED)
# target_link_libraries(xxx ${DBoW3_LIBS})

# --- pcl
# sudo apt install libpcl-dev
#set(PCL_DIR "/usr/lib/x86_64-linux-gnu/cmake/pcl")
find_package(PCL REQUIRED)
#add_definitions(${PCL_DEFINITIONS})
# target_include_directories(xxx PUBLIC ${PCL_INCLUDE_DIRS})
# target_link_libraries(xxx PCL_LIBRARIES)

# --- octomap
#sudo apt install liboctomap-dev
find_package(octomap REQUIRED)
# target_include_directories(xxx PUBLIC ${OCTOMAP_INCLUDE_DIRS})
# target_link_libraries(xxx ${OCTOMAP_LIBRARIES})

# --- gtest
set(GTest_DIR "/home/zz/artifact/googletest/1.11.0/linux-x64/lib/cmake/GTest")
find_package(GTest REQUIRED)
# target_link_libraries(xxx GTest::gtest)

# --- glog
find_package(Glog REQUIRED)
# target_include_directories(xxx PUBLIC ${GLOG_INCLUDE_DIRS})
# target_link_libraries(xxx ${GLOG_LIBRARIES})


# --- gflags
find_package(GFlags REQUIRED)
# target_include_directories(xxx PUBLIC ${GFLAGS_INCLUDE_DIRS})
# target_link_libraries(xxx ${GFLAGS_LIBRARIES})