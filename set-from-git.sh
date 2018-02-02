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
pc=$(hostname)
rm "$dot_dir"/"$pc"-terminator
ln -s "$term_dir"/config $dot_dir/"$pc"-terminator
