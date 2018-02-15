# dotfiles
dot_dir=~/linux-config
dotfiles="bashrc gitconfig inputrc vimrc"
cd $dot_dir
for dotfile in $dotfiles; do
    rm ~/.$dotfile
    ln -s $dot_dir/.$dotfile ~/.$dotfile
done

# terminator
dot_dir=~/linux-config
term_dir=~/.config/terminator
pc=$(hostname)
rm "$dot_dir"/"$pc"-terminator
cp "$term_dir"/config $dot_dir/"$pc"-terminator

# neofetch
dot_dir=~/linux-config
neofetch_dir=~/.config/neofetch
ln -s $dot_dir/neofetch.conf $neofetch_dir/config.conf
