dotDir=~/linux-config/dotfiles
# aliases
rm ~/.bash_aliases
ln -s $dotDir/aliases/.bash_aliases ~/.bash_aliases

# home
for file in *; do
	if [[ $file = .* ]]; then
		rm ~/$file 
		ln -s $dotDir/$file ~/$file
	fi
done

# terminator
termDir=~/.config/terminator
rm $termDir/config
ln -s $dotDir/termConfig "$termDir"/config
