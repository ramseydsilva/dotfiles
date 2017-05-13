dotfiles
========

1. Install vim from source with python support: https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source

1. Install go: `sudo apt-get install golang`
1. Set $GOPATH in ~/.profile or ~/.bashrc

1. 
```
cd ~
git clone https://github.com/ramseydsilva/dotfiles
cd dotfiles
```

1. Observe contents of init.sh, make changes if necessary and run `sudo chmod +x
   init.sh && ./init.sh`.

1. If running for the first time, supply the all option as: `sudo chmod +x
   init.sh && ./init.sh --all`.

Note: Needs cmake (~v3.8) compatible with python 3.


Shortcuts
=========

Vim
---

- :set scb!

- zt # set line to top

- <c-w> =  # Set splits to same size
- <leader> -  # Minimize current split
