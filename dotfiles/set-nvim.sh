# Get directory variables from script.
. ../dirs.sh
orig_file="$sys_config_dir"/nvim/init.vim
# Remove system dotfile.
rm "$orig_file"
# Link dotfile in repository to system dotfile.
ln -s "$dot_dir"/nvim "$orig_file"
