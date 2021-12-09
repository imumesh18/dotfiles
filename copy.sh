#!/usr/bin/env bash

set -e

cp -r vimrc ~/.vimrc
cp -r vim ~/.vim
cp -r config/nvim/init.vim ~/.config/nvim/init.vim
cp -r vim/pack/* ~/.local/share/nvim/site/pack/
cp -r zshrc ~/.zshrc
cp -r gitconfig ~/.gitconfig
cp -r gitignore ~/.gitignore
cp -r gitattributes ~/.gitattributes
cp -r gitmessage ~/.gitmessage
cp -r ssh/* ~/.ssh/
cp -r config/ohmyposh/code.omp.json ~/.config/ohmyposh/code.omp.json
