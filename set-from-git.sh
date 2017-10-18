files=".bash_aliases .bashrc .inputrc .vimrc"
dir=~/linux-config/dotfiles

for file in $files; do
	rm ~/$file 
	ln -s $dir/$file ~/$file
done
