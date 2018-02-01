dot_dir=~/linux-config

# dotfiles
dotfiles="bashrc gitconfig inputrc vimrc"
cd $dot_dir
for dotfile in $dotfiles; do
    rm ~/.$dotfile
    ln -s $dot_dir/.$dotfile ~/.$dotfile
done

# terminator
term_dir=~/.config/terminator
rm $term_dir/config
ln $dot_dir/termConfig "$term_dir"/config
