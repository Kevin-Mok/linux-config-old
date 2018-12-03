#!/bin/zsh

setup_marble=true

# vars {{{ #

linux_config_dir=/home/kevin/linux-config
dot_dir=$linux_config_dir/dotfiles
config_dir=$linux_config_dir/configs
sys_config_dir=~/.config
pc=$(hostname)

# }}} vars #

# dotfiles {{{ #

#  link files {{{ # 

# Get directory variables from script.
# List of dotfiles I want to link to system.
dotfiles=(bashrc gitconfig inputrc imwheelrc vimrc xinitrc Xmodmap Xresources zshrc)
cd $dot_dir
for dotfile in $dotfiles; do
	# Remove system dotfile.
    rm ~/."$dotfile"
	# Link dotfile in repository to system dotfile.
    ln -s "$dot_dir"/"$dotfile" ~/."$dotfile" && echo "Linked .$dotfile."
done

#  }}} link files # 

#  setup nvim config  {{{ # 

orig_file="$sys_config_dir"/nvim/init.vim
# Remove system dotfile.
rm "$orig_file"
# Link dotfile in repository to system dotfile.
ln -s "$dot_dir"/nvim "$orig_file" && echo "Setup Neovim config."

#  }}} setup nvim config  # 

# }}} dotfiles #

# configs {{{ #

cd $linux_config_dir
# List of config dirs in system config dir that I want to link to.
config_dirs=(neofetch i3 i3blocks sam-i3blocks ranger)
# config_dirs=(neofetch i3 i3blocks ranger)
for cur_dir in $config_dirs; do
	# Remove system file.
	rm -rf "$sys_config_dir"/"$cur_dir"
	# Link config file in repository to system config location.
	ln -s "$config_dir"/"$cur_dir" "$sys_config_dir"/"$cur_dir" && echo "Linked $cur_dir config."
done

# }}} configs #

#  marble mouse {{{ # 

if [[ "$setup_marble" = true ]]; then
	config_file_name="10-evdev.conf"
	sys_layout_file="/etc/X11/xorg.conf.d/$config_file_name"
	config_dir="$linux_config_dir/x/marble-mouse"

	# Remove system file.
	sudo rm -rf "$sys_layout_file"
	# Link config file in repository to system config location.
	sudo ln -s "$config_dir"/"$config_file_name" "$sys_layout_file" && echo "Setup Marble mouse config."
fi

#  }}} marble mouse # 
