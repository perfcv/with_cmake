cmake_minimum_required(VERSION 3.15)

project(flow-code)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include("E:/lib/libpng/lib/libpng/libpng16.cmake")

add_library(Img STATIC
    imageLib/Convert.cpp
    imageLib/Convolve.cpp
    imageLib/Image.cpp
    imageLib/ImageIO.cpp
    imageLib/ImageIOpng.cpp
    imageLib/RefCntMem.cpp

    imageLib/Convert.h
    imageLib/Convolve.h
    imageLib/Error.h
    imageLib/Image.h
    imageLib/ImageIO.h
    imageLib/ImageLib.h
    imageLib/RefCntMem.h
)

set(LIBPNG_INCLUDE_DIR "E:/lib/libpng/include")

target_include_directories(Img
    PUBLIC ${LIBPNG_INCLUDE_DIR}
)
target_link_libraries(Img
    png_static  # png is shared lib, we don't use it
)


# turn on M_PI macro
if(MSVC)
    add_definitions(-D_USE_MATH_DEFINES)
endif()

add_executable(colortest
    colortest.cpp
    colorcode.cpp
)

add_executable(color_flow
    color_flow.cpp
    flowIO.cpp
    colorcode.cpp
)

set(IMGLIB_INCLUDE_DIR ${CMAKE_SOURCE_DIR}/imageLib)

target_include_directories(colortest PUBLIC
    ${IMGLIB_INCLUDE_DIR}
)
target_include_directories(color_flow PUBLIC
    ${IMGLIB_INCLUDE_DIR}
)

target_link_libraries(colortest
    Img
)
target_link_libraries(color_flow
    Img
)
