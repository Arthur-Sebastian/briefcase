#!/bin/bash

SYMLINKS=(\
	"Desktop"\
	"Documents"\
	"Downloads"\
	"Music"\
	"Pictures"\
	"Videos"\
)

if [ -z $1 ]; then
	printf "Run with Wine prefix directory as the first argument.\n"
	exit
fi

printf "Sandboxing prefix.\n"
for dir in ${SYMLINKS[@]}; do
	rm $1/drive_c/users/$USER/$dir
	mkdir $1/drive_c/users/$USER/$dir
done

printf "Attempting to link common resource directory.\n"
if [ -d ~/Wine/Common ]; then
	ln -s ~/Wine/Common $1/drive_c/Common
fi

