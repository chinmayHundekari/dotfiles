#!/bin/bash

mkdir -v -p vim/bundle
sudo mv ~/.vimrc ~/.vimrc_old
sudo ln -s ~/dotfiles/vimrc ~/.vimrc
sudo ln -s  ~/dotfiles/vim ~/.vim

#git submodule add https://github.com/tpope/vim-pathogen.git vim/bundle/vim-pathogen
#git submodule add https://github.com/kien/ctrlp.vim.git vim/bundle/ctrlp.vim
#git submodule add https://github.com/vim-scripts/taglist.vim.git vim/bundle/taglist.vim
#git submodule add https://github.com/vim-scripts/ctags.vim.git vim/bundle/ctags.vim



