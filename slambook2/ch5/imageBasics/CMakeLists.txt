project(imageBasics)

add_executable(imageBasics imageBasics.cpp)
# 链接OpenCV库
target_link_libraries(imageBasics ${OpenCV_LIBS})

add_executable(undistortImage undistortImage.cpp)
# 链接OpenCV库
target_link_libraries(undistortImage ${OpenCV_LIBS})

# 拷贝文件
add_custom_command(TARGET imageBasics
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/ubuntu.png ${CMAKE_CURRENT_BINARY_DIR}/
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/distorted.png ${CMAKE_CURRENT_BINARY_DIR}/
)
add_custom_command(TARGET undistortImage
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/ubuntu.png ${CMAKE_CURRENT_BINARY_DIR}/
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/distorted.png ${CMAKE_CURRENT_BINARY_DIR}/
)