#!/bin/sh

export CC=clang-3.9
export CXX=clang++-3.9

 mkdir build && cd build && cmake .. -GNinja && cmake --build . --target all
