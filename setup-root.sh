#!/bin/bash

linux_config_dir=/home/kevin/linux-config
dot_dir=$linux_config_dir/dotfiles

# Get directory variables from script.
# List of dotfiles I want to link to system.
dotfiles=(bashrc inputrc imwheelrc vimrc Xmodmap Xresources zshrc)
cd $dot_dir || exit
for dotfile in "${dotfiles[@]}"; do
	# Remove system dotfile.
    rm ~/."$dotfile"
	# Link dotfile in repository to system dotfile.
    cp "$dot_dir"/"$dotfile" ~/."$dotfile"
done
