# Slambook2 code with better modern CMake and latest dependencies

在官方 Slambook2 代码基础上修改：
- CMake： 使用 modern CMake 的风格处理依赖关系; CMake 3.20 + Ubuntu 20.04 + Clang 13 环境
- 依赖库：用最新版， Pangolin 需要开 C++17， OpenCV 使用 4 （包含代码中的修改）
- 涉及到的手动编译的库， 下载和编译步骤、 编译后用的 deps.cmake 见 [dependencies](dependencies) 目录
- 删掉了一些没用的 cmake_modules ， 改用各依赖库官方的 xxx-config.cmake 提供的变量

- 删掉了一些图片、数据， 不然库太大。用的时候，和高博原版仓库一起用即可。

## Slambook2
![titlepage](./figures/title.png)

Welcome to Slambook 2nd Edition! This is the codebase of our book. Here are some relavant links if you need them: 
- [Our book at jd.com](https://item.jd.com/12666058.html)
- [Our book at douban.com](https://book.douban.com/subject/27028215/) (I'll be happy to get a score at douban)
- [code of slambook version 1](https://github.com/gaoxiang12/slambook)
- [slambook in English](https://github.com/gaoxiang12/slambook-en) (Still on going)

Email me if you have any questions: gao.xiang.thu at gmail dot com. Or send a issue at github if your question is about the code.

Errata will be updated at this code base.

Hope you like this book.

BaiduYun backup link in case your github is very slow (common in China): [here](https://pan.baidu.com/s/1XQwpnDb3BOvxXZhL-03p3w)

---
## 视觉SLAM十四讲：从理论到实践 第二版
欢迎来到视觉SLAM十四讲：从理论到实践。这里存放本书对应的代码文件。以下是一些可能对你有用的链接：
- [京东书籍链接](https://item.jd.com/12666058.html)
- [第一版书代码](https://github.com/gaoxiang12/slambook)
- [英文版代码](https://github.com/gaoxiang12/slambook-en) (正在翻译中)

如果您对书籍内容有疑问，请给我发送邮件。如果对代码有疑问，请点击上方的issue链接新建issues。我会不定期查看和回复（抱歉我可能无法回复所有问题和邮件）。

勘误表会更新到代码库中。

希望您喜欢本书。

本代码的百度云备份（如果您的github速度非常慢）[下载链接](https://pan.baidu.com/s/1XQwpnDb3BOvxXZhL-03p3w).
