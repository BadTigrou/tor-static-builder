#!/bin/bash

## Building libevent
cd libevent
./autogen.sh
./configure --prefix=$PWD/install
make -j$(nproc) --silent
make install
cd ..

## Building openssl
cd openssl
./config --prefix=$PWD/install no-shared no-dso
make -j$(nproc) --silent
make install
cd ..

## Building zlib
cd zlib
./configure --prefix=$PWD/install
make -j$(nproc) --silent
make install
cd ..


## Building tor
cd tor
./autogen.sh
./configure --prefix=./install --with-libevent-dir=../libevent/install --with-openssl-dir=../openssl/install --with-zlib-dir=../zlib/install --enable-static-tor

make -j$(nproc) --silent
make install