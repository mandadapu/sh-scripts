#!/bin/bash

GM_MAIN_VER=1.3
GM_VER=1.3.18
JPEG_VER=9
PNG_VER=1.5.19

rm -rf tmp/gm/jpeg
mkdir -p tmp/gm/jpeg
cd tmp/gm/jpeg

##curl http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz | tar xz

echo 'Installing libjpeg port........'
curl -O http://www.ijg.org/files/jpegsrc.v$JPEG_VER.tar.gz
tar -zxvf jpegsrc.v$JPEG_VER.tar.gz
cd jpeg-$JPEG_VER/
./configure
make
make install

echo 'Installing libpng port........'
curl -O ftp://ftp.simplesystems.org/pub/png/src/libpng15/libpng-$PNG_VER.tar.gz
tar -zxvf libpng-$PNG_VER.tar.gz
cd libpng-$PNG_VER/
./configure
make
make install


echo 'Installing graphicmagic........'
curl ftp://ftp.graphicsmagick.org/pub/GraphicsMagick/$GM_MAIN_VER/GraphicsMagick-$GM_VER.tar.xz | tar xz
cd GraphicsMagick-$GM_VER
./configure --enable-shared
make
make install



