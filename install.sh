#!/bin/bash

if [ $ZSH_THEME -z  ]
then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [ -d ~/Documents/ ]
then
    mkdir -p ~/Documents/workspace/local/
    cd ~/Documents/workspace/local/
else
    mkdir -p ~/workspace/local/
    cd ~/workspace/local/
fi

git clone https://github.com/vhysug/dotfiles.git

curl -fLo dotfiles/vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s `pwd`/dotfiles/tmux.conf ~/.tmux.conf
ln -s `pwd`/dotfiles/vim ~/.vim

