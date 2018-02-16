# Get directory variables from script.
. ../dirs.sh
# List of config files in system config dir that I want to link to.
config_files="neofetch/config.conf i3/config i3blocks/i3blocks.conf"
for file in $config_files; do
	# Remove system file.
	rm "$sys_config_dir"/"$file"
	# Link config file in repository to system config location.
	ln -s "$config_dir"/"$pc"/$(echo "$file" | cut -d'/' -f 1).conf \
	"$sys_config_dir"/"$file" 
done
