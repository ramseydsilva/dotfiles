dotfiles
========

1. Install vim from source with python support: https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
1. Install go: `sudo apt-get install golang`
1. Set $GOPATH in ~/.profile or ~/.bashrc

1. Clone

```
cd ~
git clone https://github.com/ramseydsilva/dotfiles
cd dotfiles
git submodule init
git submodule update
cd ~
ln -s ~/dotfiles/.vim .vim
ln -s ~/dotfiles/.vimrc .vimrc
ln -s ~/dotfiles/.config/* .config/.
sudo ln -s ~/dotfiles/bin/* /usr/bin/.
cd .vim/bundle/YouCompleteMe
./install.py --all
```
