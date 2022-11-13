#!/bin/bash

ALIAS="git --git-dir=$HOME/.briefcase --work-tree=$HOME"

# basic setup
echo -en "\nalias cfg=\"$ALIAS\"" >> $HOME/.bashrc
$ALIAS config --local status.showUntrackedFiles no
# submodules
$ALIAS submodule init
$ALIAS submodule update
