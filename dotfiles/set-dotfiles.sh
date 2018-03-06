# Get directory variables from script.
. ../dirs.sh
# List of dotfiles I want to link to system.
dotfiles="bashrc gitconfig inputrc vimrc Xresources"
# cd $dot_dir
for dotfile in $dotfiles; do
	# Remove system dotfile.
    rm ~/."$dotfile"
	# Link dotfile in repository to system dotfile.
    ln -s "$dot_dir"/"$dotfile" ~/."$dotfile"
done
