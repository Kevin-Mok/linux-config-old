# Get directory variables from script.
. ../dirs.sh
# The name of my Terminator config file in the repository.
my_terminator_conf_name=terminator.conf
# Remove currently existing config file in the repository.
rm "$config_dir"/"$pc"/"$my_terminator_conf_name"
# Copy system Terminator config file to repository.
cp "$sys_config_dir"/terminator/config \
"$config_dir"/"$pc"/"$my_terminator_conf_name"
