
add_executable(stereoVision stereoVision.cpp)
target_link_libraries(stereoVision ${OpenCV_LIBS} ${Pangolin_LIBRARIES})

set_target_properties(stereoVision
    PROPERTIES
    CXX_STANDARD 17
)


# 拷贝文件
add_custom_command(TARGET stereoVision
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/left.png ${CMAKE_CURRENT_BINARY_DIR}/
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/right.png ${CMAKE_CURRENT_BINARY_DIR}/
)