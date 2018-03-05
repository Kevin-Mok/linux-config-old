# Initialize Other Alias Files {{{ #
alias_folder="~/linux-config/aliases"
alias_type="school git pc"
for type in $alias_type; do
	. ~/linux-config/aliases/."$type"_aliases
done
# }}} 

# System {{{ #
alias l='ls -a'
alias ll='ls -alF'
alias cs='printf "\033c"'
shopt -s dotglob
alias lo="i3-msg exit"
alias s="systemctl suspend"
alias sd="sudo shutdown 0"
alias reb="sudo shutdown -r 0"
alias hst="history"
alias rmsw="rm .sw*"
alias nf="neofetch"
alias vlm="alsamixer -c 1"
# }}} System #

# Directories {{{ #
# unalias c
d() { cd "$@" && ls -a ; }
cd_up() { d $(printf "%0.s../" $(seq 1 $1 )) ; }
alias "d."="cd_up"
alias dd="d ~/Downloads"
alias cfg="d ~/.config"
# }}}  #

ok() { okular $1 ; }
rfnd() { find . -name "$1" ; } 
# rfnde() { find . -name "*.$1" ; }
rgrp() { grep -r $1 * ; } 
grpy() { grep $1 *.py ; } 
p3() { python3 $1 ; } 
py() { python $1 ; } 

# Config {{{ #
alias lc="d ~/linux-config/"
alias vv="vi ~/.vimrc"
alias r=". ~/.bashrc"
	# aliases
	alias lca="d ~/linux-config/aliases"
	alias vb="vi $alias_folder/.bash_aliases"
	alias vs="vi $alias_folder/.school_aliases"
	alias vag="vi $alias_folder/.git_aliases"
	alias vap="vi $alias_folder/.pc_aliases"
# }}} Config #

# redshift
rs(){ redshift -O $(($1 * 1000)) ; }
alias rx="redshift -x"
mrk() { pandoc -o ${1%.*}.html $1 && chr ${1%.*}.html ; } 

# UltiSnips {{{ #
usnp_dir="~/.vim/plugged/vim-snippets/UltiSnips"
alias snp="d $usnp_dir"
vsnp() { vi ~/.vim/plugged/vim-snippets/UltiSnips/"$1".snippets ; }
alias tm="vi $usnp_dir/texmath.snippets"
# }}} #
