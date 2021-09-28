#!/bin/bash

if [ $ZSH_THEME -z  ]
then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

mkdir -p ~/Documents/workspace/local/
cd ~/Documents/workspace/local/

git clone https://github.com/vhysug/dotfiles.git

curl -fLo vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ls -s `pwd`/dotfiles/tmux.conf ~/.tmux.conf
ls -s `pwd`/vim ~/.vim

