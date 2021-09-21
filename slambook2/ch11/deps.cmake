# opencv 
find_package( OpenCV REQUIRED )

# dbow3 
# dbow3 is a simple lib so I assume you installed it in default directory 
#set( DBoW3_INCLUDE_DIRS "/usr/local/include" )
#set( DBoW3_LIBS "/usr/local/lib/libDBoW3.a" )

set(DBoW3_DIR "/home/zz/artifact/DBoW3/master/linux-x64/lib/cmake/DBoW3")
find_package(DBoW3 REQUIRED)
