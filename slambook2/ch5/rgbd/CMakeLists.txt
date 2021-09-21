add_executable(joinMap joinMap.cpp)
target_link_libraries(joinMap ${OpenCV_LIBS} Sophus::Sophus ${Pangolin_LIBRARIES})
set_target_properties(joinMap
    PROPERTIES
    CXX_STANDARD 17
)


# 拷贝文件
add_custom_command(TARGET joinMap
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/pose.txt ${CMAKE_CURRENT_BINARY_DIR}/
)