#!/bin/bash

# Get directory variables from script.
. ../../scripts/dirs.sh

config_file_name="10-evdev.conf"
sys_layout_file="/etc/X11/xorg.conf.d/$config_file_name"
config_dir="$linux_config_dir/x/marble-mouse"

# Remove system file.
sudo rm -rf "$sys_layout_file"
# Link config file in repository to system config location.
sudo ln -s "$config_dir"/"$config_file_name" "$sys_layout_file"
