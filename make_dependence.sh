#!/bin/bash


git submodule update --init --recursive

# pangolin
cd 3rdparty
cd Pangolin
mkdir build
cd build
cmake ../
make -j
make install
# Sophus
cd ..
cd Sophus
mkdir build
cd build
cmake ../
make
# 如果内存够32G ,make -j
make install