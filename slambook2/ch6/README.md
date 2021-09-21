## ceras 库

安装 ceres 库：
```bash
sudo apt install libceres-dev
```

ceras 是分别提供头文件和库文件的cmake变量。

## g2o 库

编译安装 g2o


使用 g2o 时， 分别链接它的某个 component。 component 已经自动处理了头文件包含问题。

## cmake 模块
删掉了当前目录的 cmake 目录， 原因是 ceres 和 g2o 官方提供了 xxx-config.cmake ， 没必要自己造轮子。