#!/bin/bash

GM_MAIN_VER=1.3
GM_VER=1.3.18

mkdir -p tmp
cd tmp

#curl http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz | tar xz

curl ftp://ftp.graphicsmagick.org/pub/GraphicsMagick/$GM_MAIN_VER/GraphicsMagick-$GM_VER.tar.xz | tar xz

cd GraphicsMagick-$GM_VER

./configure --enable-shared

make
sudo make install


