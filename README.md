## Slambook2 Ubuntu24.04
这份代码是slam14讲的代码的fork，在ubuntu24.04下通过
## build
1. apt安装依赖\
`chmod +x ./install_dependence.sh`\
`./install_dependence.sh`\
如果不能编译g2o,卸载spdlog\
`sudo apt-get purge libspdlog-dev`
sudo apt-get purge libspdlog-dev
2. 源码编译安装依赖\
`git submodule update --init --recursive`\
对每个依赖\
`cd 3rdparty`\
`cd <dep>`\
`mkdir build`\
`cd build`\
`cmake ../`\
`make`\
如果内存够32G ,`make -j`\
`make install`\

# 建图数据集[https://rpg.ifi.uzh.ch/datasets/remode_test_data.zip]
# 里程计数据集[https://www.cvlibs.net/datasets/kitti/eval_odometry.php]

