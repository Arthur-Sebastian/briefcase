#!/bin/bash

alias="git --git-dir=$HOME/.briefcase --work-tree=$HOME"

printf "Configuring git...\n"
$alias config --local status.showUntrackedFiles no

printf "Updating sumbodules...\n"
$alias submodule init
$alias submodule update

printf "Installing npm packages..."
nodeDirs=( \
"$HOME/.config/coc/extensions" \
)
for currentDir in "${nodeDirs[@]}"; do
	(cd $currentDir && npm install)
done

printf "Creating symbolic links...\n"
symlinks=( \
"$HOME/.vim/pack $HOME/.config/nvim/pack" \
"$HOME/.vim/colors $HOME/.config/nvim/colors" \
"$HOME/.vimrc $HOME/.config/nvim/init.vim" \
)
for currentLink in "${symlinks[@]}"; do
	linkSource=${currentLink[0]}
	linkTarget=${currentLink[1]}
	if [ -f $linkTarget ] || [ -d $linkTarget ]; then
		continue
	fi
	ln -s $linkSource $linkTarget
done

