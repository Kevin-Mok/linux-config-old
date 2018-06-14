# Get directory variables from script.
. ../dirs.sh
# List of config dirs in system config dir that I want to link to.
config_dirs=(neofetch i3 i3blocks sam-i3blocks ranger)
# config_dirs=(neofetch i3 i3blocks ranger)
for cur_dir in $config_dirs; do
	# Remove system file.
	rm -rf "$sys_config_dir"/"$cur_dir"
	# Link config file in repository to system config location.
	ln -s "$config_dir"/"$cur_dir" "$sys_config_dir"/"$cur_dir"
done
