
include("../deps.cmake")
if(USE_UBUNTU_20)
    message("You are using Ubuntu 20.04, fmt::fmt will be linked")
    find_package(fmt REQUIRED)
    set(FMT_LIBRARIES fmt::fmt)
endif()
add_executable(trajectoryError trajectoryError.cpp)
target_link_libraries(trajectoryError ${Pangolin_LIBRARIES} Sophus::Sophus ${FMT_LIBRARIES})
set_target_properties(trajectoryError
    PROPERTIES
    CXX_STANDARD 17
)

# 拷贝轨迹文件
add_custom_command(TARGET trajectoryError
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/estimated.txt ${CMAKE_CURRENT_BINARY_DIR}/
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/groundtruth.txt ${CMAKE_CURRENT_BINARY_DIR}/
)