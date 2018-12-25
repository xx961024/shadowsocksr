#!/bin/bash

if [ ! -d libsodium-1.0.1 ]; then
    wget https://raw.githubusercontent.com/xx961024/SSR/master/file/libsodium/libsodium-1.0.1.tar.gz || exit 1
    tar xf libsodium-1.0.1.tar.gz || exit 1
fi
pushd libsodium-1.0.1
./configure && make -j2 && make install || exit 1
sudo ldconfig
popd
