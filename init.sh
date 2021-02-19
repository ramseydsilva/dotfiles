#!/bin/bash

dir=$(pwd -P)

echo "Initializing submodules"
git submodule update --init --recursive

echo "Creating symlinks"
ln -s $dir/.vimrc ~/.vimrc
ln -s $dir/.vim ~/.vim
ln -s $dir/.config ~/.config
rm ~/.bashrc
ln -s $dir/.bashrc ~/.bashrc
ln -s $dir/.bash_aliases ~/.bash_aliases

echo "Sourcing"
source ~/.bashrc

if  [ -z $1 ]
then
    echo "Skipping install all. Run with: $ bash init.sh all"
else
    echo "Installing You complete me"
    cd /usr/local/src
    wget https://cmake.org/files/v3.13/cmake-3.13.0-rc1.tar.gz
    tar -xvzf cmake-3.13.0-rc1.tar.gz
    cd cmake-3.13.0-rc1
    ./bootstrap
    make
    make install
    /usr/bin/python3 $dir/.vim/bundle/YouCompleteMe.git/install.py
fi
