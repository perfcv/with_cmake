# Bazel-Intro

## stage1: 1 package, 1 target
The hello-world example.

see `stage1` folder

## stage2: 1 package, multi-target
Deep Learning is popular nowadays. Let's build a library of activation functions, and build its testbed, in one package.

see `stage2` folder

## stage3: multi-package, multi-target
Based on stage2, we separate the random number generation into a library target in `lib` folder. Also, we add a `timer` library target, which can be used to measure time consumption.

see `stage3` folder

## stage4: use external library
`Hello world` project based on importing external `Abseil` library. Simplified from abseil official demo program.

see `stage4` folder


