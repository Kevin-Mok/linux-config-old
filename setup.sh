#!/bin/bash

# vars {{{ #

shopt -s dotglob

lc_dir="/home/kevin/linux-config"

link_to_lc () {
	echo "Linking $1 from $3 to $2."
	sys_dir="$2"
	config_dir="$3"
	case "$1" in

# }}} vars #

		# files {{{ #
		
		files)
			for file in "$config_dir"/*; do
				file_name=$(basename -- "$file")
				# echo "$file_name"
				# Remove system file and link config in repository to system.
				rm -f "${sys_dir:?}"/"$file_name"
				ln -s "$config_dir"/"$file_name" "$sys_dir"/"$file_name" && echo "Linked $file_name."
			done ;;
		
		# }}} files #

		# dirs {{{ #
		
		dirs)
			for dir in "$config_dir"/*/; do
				dir_name=$(basename -- "$dir")
				# echo "$dir_name"
				rm -f "${sys_dir:?}"/"$dir_name"
				ln -s "$config_dir"/"$dir_name" "$sys_dir"/"$dir_name" && echo "Linked $dir_name."
			done ;;
		
		# }}} dirs  #

# run commands {{{ #

	esac
}

link_to_lc "files" "$HOME" "$lc_dir/dotfiles"
link_to_lc "dirs" "$HOME/.config" "$lc_dir/configs"
link_to_lc "dirs" "$HOME/.themes" "$lc_dir/gtk/themes"

# }}} run #

# setup nvim config {{{ #

# nvim_file="/home/kevin/lc-test/init.vim"
nvim_file="$HOME/.config/nvim/init.vim"
rm "$nvim_file"
ln -s "$HOME/.nvim" "$nvim_file" && echo "Setup Neovim config."

# }}} setup nvim config #

# testing {{{ #

# link_to_lc "files" "/home/kevin/lc-test" "$lc_dir/dotfiles"
# link_to_lc "dirs" "/home/kevin/lc-test" "$lc_dir/configs"
# link_to_lc "dirs" "/home/kevin/lc-test" "$lc_dir/gtk/themes"

# }}} testing #

