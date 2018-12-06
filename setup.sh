#!/bin/bash

shopt -s dotglob

lc_dir="/home/kevin/linux-config"

link_to_lc () {
	echo "Linking $1 from $3 to $2."
	sys_dir="$2"
	config_dir="$3"
	items=()
	case "$1" in
		files)
			items="$config_dir"/* ;;
		dirs)
			items="$config_dir"/*/ ;;
	esac
	for item in $items; do
		item_name=$(basename -- "$item")
		# echo "$item_name"
		# Remove system item and link config in repository to system.
		rm -f "${sys_dir:?}"/"$item_name"
		ln -s "$config_dir"/"$item_name" "$sys_dir"/"$item_name" && echo "Linked $item_name."
	done
}

link_to_lc "files" "$HOME" "$lc_dir/dotfiles"
# link_to_lc "dirs" "$HOME/.config" "$lc_dir/configs"
# link_to_lc "dirs" "$HOME/.themes" "$lc_dir/gtk/themes"

# setup nvim config
# nvim_file="/home/kevin/lc-test/init.vim"
nvim_file="$HOME/.config/nvim/init.vim"
rm "$nvim_file"
ln -s "$HOME/.nvim" "$nvim_file" && echo "Setup Neovim config."

# testing {{{ #

# link_to_lc "files" "/home/kevin/lc-test" "$lc_dir/dotfiles"
# link_to_lc "dirs" "/home/kevin/lc-test" "$lc_dir/configs"
# link_to_lc "dirs" "/home/kevin/lc-test" "$lc_dir/gtk/themes"

# }}} testing #

