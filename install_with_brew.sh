#!/bin/bash

#ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew update

export PATH="/usr/local/bin:$PATH"
#sudo chmod -R 777 /usr/local/lib

brew uninstall graphicsmagick libpng jpeg libtool libtiff node mongodb
brew cleanup -s

echo 'Installing libtool'
brew install libtool --universal
brew link libtool

echo 'Installing libtiff'
brew install libtiff

echo 'Installing jpeg '
brew install jpeg

echo 'Installing libpng'
brew install libpng

echo 'Installing graphic migic'
brew install graphicsmagick --build-from-source
brew link graphicsmagick


echo 'Installing mongo db'
brew install mongodb --with-openssl

brew install node

npm install -g grunt-cli



