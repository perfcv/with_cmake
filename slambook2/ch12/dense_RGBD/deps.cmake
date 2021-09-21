# opencv 
find_package(OpenCV REQUIRED)

# Eigen
find_package(Eigen3 3.3 REQUIRED NO_MODULE)

# pcl
#set(PCL_DIR "/usr/lib/x86_64-linux-gnu/cmake/pcl")
find_package(PCL REQUIRED)
#include_directories(${PCL_INCLUDE_DIRS})
#add_definitions(${PCL_DEFINITIONS})

# octomap 
find_package(octomap REQUIRED)
include_directories(${OCTOMAP_INCLUDE_DIRS})