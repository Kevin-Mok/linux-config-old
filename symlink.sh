files=".bash_aliases .bashrc .inputrc .vimrc"
dir=~/dotfiles

mkdir $dir

for file in $files; do
    mv ~/$file $dir
    ln -s $dir/$file ~/$file
done
