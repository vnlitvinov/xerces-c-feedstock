#!/bin/bash

# Get an updated config.sub and config.guess
cp -r ${BUILD_PREFIX}/share/libtool/build-aux/config.* ./config

./configure --prefix=$PREFIX --with-icu --disable-network
make -j${CPU_COUNT} ${VERBOSE_AT}
make check
make install
