dotfiles
========


Install default apps
--------------------
1. google chrome:

```
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

sudo apt-get update

sudo apt-get -y install google-chrome-stable curl
```


Install vim
-----------
1. Install vim from source with python support: https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source

1.
```
cd ~
git clone git@github.com:ramseydsilva/dotfiles.git
cd dotfiles
```

1. If running for the first time, supply the all option as: `sudo chmod +x
   init.sh && ./init.sh all`.

1. Observe contents of init.sh, make changes if necessary and run `sudo chmod +x
   init.sh && ./init.sh`.


Note: Needs cmake (~v3.8) compatible with python 3.


Shortcuts
=========

Vim
---

- :set scb!

- zt # set line to top

- <c-w> =  # Set splits to same size
- <leader> -  # Minimize current split
