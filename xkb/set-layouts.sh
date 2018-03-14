# Get directory variables from script.
. ../dirs.sh

xkb_config_file_name="pc"
sys_layout_file="/usr/share/X11/xkb/symbols/$xkb_config_file_name"
xkb_config_dir="$linux_config_dir/xkb"

# Remove system file.
sudo rm -rf "$sys_layout_file"
# Link config file in repository to system config location.
sudo ln -s "$xkb_config_dir"/"$pc"-"$xkb_config_file_name" "$sys_layout_file"
