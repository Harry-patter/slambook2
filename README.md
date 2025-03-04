## Slambook2 Ubuntu24.04
这份代码是slam14讲的代码的fork，在ubuntu24.04下通过
## build
1. 安装依赖\
`chmod +x ./install_dependence.sh`\
`./install_dependence.sh`\
2. 编译依赖\
`git submodule update --init --recursive`\
3. 对每个依赖\
`cd 3rdparty`\
`cd <dep>`\
`mkdir build`\
`cd build`\
`cmake ../`\
`make`\
如果内存够32G ,`make -j`\
`make install`\

