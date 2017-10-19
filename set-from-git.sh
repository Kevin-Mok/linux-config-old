files=".bash_aliases .bashrc .inputrc .vimrc .gvimrc"
dir=~/linux-config/dotfiles

for file in $files; do
	rm ~/$file 
	ln -s $dir/$file ~/$file
done
