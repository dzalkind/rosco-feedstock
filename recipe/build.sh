#!/bin/bash

python setup.py install

mkdir ROSCO/build
cd ROSCO/build 

cmake \
    -DCMAKE_Fortran_FLAGS="-ffree-line-length-0" \
    -DCMAKE_INSTALL_PREFIX=${PREFIX} \
    -DCMAKE_BUILD_TYPE=Release \
    ..

make -j${CPU_COUNT} install
