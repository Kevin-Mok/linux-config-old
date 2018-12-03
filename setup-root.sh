#!/bin/zsh

setup_marble=false

linux_config_dir=/home/kevin/linux-config
dot_dir=$linux_config_dir/dotfiles
pc=$(hostname)

# Get directory variables from script.
# List of dotfiles I want to link to system.
dotfiles=(bashrc gitconfig inputrc imwheelrc vimrc Xmodmap Xresources zshrc)
cd $dot_dir
for dotfile in $dotfiles; do
	# Remove system dotfile.
    rm ~/."$dotfile"
	# Link dotfile in repository to system dotfile.
    cp "$dot_dir"/"$dotfile" ~/."$dotfile"
done

#  marble mouse {{{ # 

if [[ "$setup_marble" = true ]]; then
	config_file_name="10-evdev.conf"
	sys_layout_file="/etc/X11/xorg.conf.d/$config_file_name"
	config_dir="$linux_config_dir/x/marble-mouse"

	# Remove system file.
	sudo rm -rf "$sys_layout_file"
	# Link config file in repository to system config location.
	sudo cp "$config_dir"/"$config_file_name" "$sys_layout_file"
fi

#  }}} marble mouse # 
