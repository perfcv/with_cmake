## opencv 使用修正

改掉了 opencv3， 换成 opencv4， 包括 cmake 里和 C++ 代码里。

CV_LOAD_IMAGE_COLOR => cv::IMREAD_COLOR

CV_LOAD_IMAGE_UNCHANGED =>  cv::IMREAD_UNCHANGED

CV_FM_8POINT => cv::FM_8POINT

## 函数返回值

应该有返回值的函数， 缺失返回值， 在 android 上会报 trap。 不要觉得 warning 就可以忽略。