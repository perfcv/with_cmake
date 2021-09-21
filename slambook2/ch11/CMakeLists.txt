cmake_minimum_required( VERSION 3.20 )
project( loop_closure )

set( CMAKE_BUILD_TYPE "Release" )
set( CMAKE_CXX_STANDARD 11 )

include("deps.cmake")

add_executable( feature_training feature_training.cpp )
target_link_libraries( feature_training ${OpenCV_LIBS} ${DBoW3_LIBS} )

add_executable( loop_closure loop_closure.cpp )
target_link_libraries( loop_closure ${OpenCV_LIBS} ${DBoW3_LIBS} )

add_executable( gen_vocab gen_vocab_large.cpp )
target_link_libraries( gen_vocab ${OpenCV_LIBS} ${DBoW3_LIBS} )

# 拷贝目录
execute_process(
    COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_SOURCE_DIR}/data ${CMAKE_BINARY_DIR}/data
)