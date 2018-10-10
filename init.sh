#!/bin/bash

echo "Initializing submodules"
git submodule update --init --recursive

echo "Creating symlinks"
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.config ~/.config
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases

echo "Sourcing"
source ~/.bashrc

if  [ -z $1 ]
then
    echo "Skipping install all. Run with: $ bash init.sh all"
else
    echo "Installing You complete me"
    cd /usr/local/src
    sudo wget https://cmake.org/files/v3.13/cmake-3.13.0-rc1.tar.gz
    sudo tar -xvzf cmake-3.8.1.tar.gz
    cd cmake-3.13.0-rc1
    sudo ./bootstrap
    sudo make
    sudo make install
    ~/dotfiles/.vim/bundle/YouCompleteMe.git/install.py --all
fi
