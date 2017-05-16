#!/bin/bash

echo "Initializing submodules"
git submodule update --init --recursive

echo "Creating symlinks"
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.config ~/.config
ln -s ~/dotfiles/.bashrc ~/.bashrc

echo "Sourcing"
source ~/.bashrc

if  [ -z $1 ]
then
    echo "Skipping install all. Run with: $ bash init.sh all"
else
    echo "Installing You complete me"
    cd /usr/local/src
    wget https://cmake.org/files/v3.8/cmake-3.8.1.tar.gz
    tar -xvzf cmake-3.8.1.tar.gz
    cd cmake-3.8.1
    ./bootstrap
    make
    sudo make install
    ~/dotfiles/.vim/bundle/YouCompleteMe.git/install.py --all
fi
