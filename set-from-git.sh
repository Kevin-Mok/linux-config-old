# home
files=".bash_aliases .bashrc .inputrc .vimrc .gvimrc"
dotDir=~/linux-config/dotfiles

for file in $files; do
	rm ~/$file 
	ln -s $dotDir/$file ~/$file
done

# terminator
termDir=~/.config/terminator/
rm $termDir/config 
ln -s $dotDir/termConfig $termDir/config 
