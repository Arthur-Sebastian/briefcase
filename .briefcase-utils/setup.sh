#!/bin/bash

ALIAS="git --git-dir=$HOME/.briefcase --work-tree=$HOME"

# setup repo
$ALIAS config --local status.showUntrackedFiles no
# submodules
$ALIAS submodule init
$ALIAS submodule update
# create link between nvim and vim configs
ln -s $HOME/.vim/pack $HOME/.config/nvim/pack
ln -s $HOME/.vim/colors $HOME/.config/nvim/colors
ln -s $HOME/.vimrc $HOME/.config/nvim/init.vim
