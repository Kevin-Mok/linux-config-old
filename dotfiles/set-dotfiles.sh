#!/bin/zsh

#  link files {{{ # 

# Get directory variables from script.
. ../scripts/dirs.sh
# List of dotfiles I want to link to system.
dotfiles=(bashrc gitconfig inputrc imwheelrc vimrc xinitrc Xmodmap Xresources zshrc)
# cd $dot_dir
for dotfile in $dotfiles; do
	# Remove system dotfile.
    rm ~/."$dotfile"
	# Link dotfile in repository to system dotfile.
    ln -s "$dot_dir"/"$dotfile" ~/."$dotfile"
done

#  }}} link files # 

#  setup nvim config  {{{ # 

orig_file="$sys_config_dir"/nvim/init.vim
# Remove system dotfile.
rm "$orig_file"
# Link dotfile in repository to system dotfile.
ln -s "$dot_dir"/nvim "$orig_file"

#  }}} setup nvim config  # 
