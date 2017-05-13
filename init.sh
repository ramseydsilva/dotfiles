#!/bin/bash

echo "Initializing submodules"
git submodule init
git submodule update

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
    echo "Installing vim bundles"
    ~/dotfiles/.vim/bundle/YouCompleteMe.git/install.py --all
fi
