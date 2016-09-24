#!/bin/sh

export CC=clang-3.9
export CXX=clang++-3.9

apt-get update -qq
apt-get install -qq -y wget

 wget http://blog.anantshri.info/content/uploads/2010/09/add-apt-repository.sh.txt
 mv add-apt-repository.sh.txt add-apt-repository
 chmod +x add-apt-repository
 ./add-apt-repository -y 'ppa:zoogie/sdl2-snapshots'
 ./add-apt-repository ppa:ubuntu-toolchain-r/test -y
 ./add-apt-repository ppa:boost-latest/ppa -y
 ./add-apt-repository -y 'ppa:dartsim/ppa'
 apt-get update -qq
 apt-get install -qq -y cmake
 apt-get install -qq -y make
 apt-get install -qq -y clang-3.9
 apt-get install -qq -y libglew-dev
 apt-get install -qq -y libsdl2-dev
 apt-get install -qq -y libsdl2-image-dev
 apt-get install -qq -y libassimp-dev

 mkdir build && cd build && cmake . -DUSE_GLM_BUNDLE=TRUE && make