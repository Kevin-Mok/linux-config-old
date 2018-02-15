# dotfiles
dot_dir=~/linux-config
dotfiles="bashrc gitconfig inputrc vimrc"
cd $dot_dir
for dotfile in $dotfiles; do
    rm ~/.$dotfile
    ln -s $dot_dir/.$dotfile ~/.$dotfile
done

# config files
dot_dir=~/linux-config
config_dir=~/.config
config_files="neofetch/config.conf i3/config i3blocks/i3blocks.conf"
for file in $config_files; do
	rm $config_dir/$file
	ln -s $dot_dir/$(echo $file | cut -d'/' -f 1).conf $config_dir/$file
	# echo $(echo $file | cut -d'/' -f 1)
done

# terminator
dot_dir=~/linux-config
config_dir=~/.config/
# term_dir=~/.config/terminator
pc=$(hostname)
rm "$dot_dir"/"$pc"-terminator
cp "$config_dir"/terminator/config $dot_dir/"$pc"-terminator
