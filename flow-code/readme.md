## Flow-Code

Orginal code: https://vision.middlebury.edu/flow/code/flow-code.zip

This is flow-code with CMake build support and all source files converted to UTF-8 encoding.

Tested in Windows 10 with Visual Studio 2017, but can be easily modified to be built in Linux / MacOSX or other version of Visual Studio.

## Quick test
[Release](Release) folder is VS2017-x64 generated stuffs. 

You may directly use `Release\color_flow.exe` if it run OK.

Just double click `Release/run.bat` to quick test.

If `Release\color_flow.exe` not working, please build from scratch according to the following steps.

## Preparation
- cmake

Install cmake, >= 3.15 recommended.

- zlib

libpng relies on zlib, my zlib is located in Miniconda / Anaconda subdirectories. You may also compile zlib from scratch.

- libpng

Install libpng, build from scratch with cmake is recommended in Windows. Including both debug & release mode.


## Build this project
- Modify CMakeLists.txt

Change libpng's folder to your installed directory.

Then in explorer double click `build/vs2017-x64.bat`.

Then you get `build\vs2017-x64\Release>color_flow.exe`. Use it for conversion, e.g.:
```
color_flow.exe 
```