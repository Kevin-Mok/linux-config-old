alias_folder="~/linux-config/aliases"
alias_type="school git pc laptop 209 my_pc"
for type in $alias_type; do
	. ~/linux-config/aliases/."$type"_aliases
done

# system
alias l='ls -a'
alias ll='ls -alF'
alias cs='printf "\033c"'
shopt -s dotglob
alias reb="sudo shutdown -r 0"
alias sd="sudo shutdown 0"
alias s="systemctl suspend"
alias hst="history"
alias topo="top -o %MEM"
alias rmsw="rm .sw*"

# directories
# unalias c
d() { cd "$@" && ls -a ; }
cd_up() { d $(printf "%0.s../" $(seq 1 $1 )) ; }
alias "d."="cd_up"
alias cdd="d ~/Downloads"

# apps
ok() { okular $1 ; }

## config
alias lc="d ~/linux-config/"
alias vv="vi ~/.vimrc"
alias r=". ~/.bashrc"
	# aliases
	alias lca="d ~/linux-config/aliases"
	alias vb="vi $alias_folder/.bash_aliases"
	alias vs="vi $alias_folder/.school_aliases"
	alias vs9="vi $alias_folder/.209_aliases"

# redshift
rs(){ redshift -O $(($1 * 1000)) ; }
alias rx="redshift -x"

# UltiSnips
alias dsnp="d ~/.vim/plugged/vim-snippets/UltiSnips/"
alias csnp="d ~/.vim/UltiSnips/"

alias vsptm="vi ~/.vim/UltiSnips/texmath.snippets"
vdsnp() { vi ~/.vim/plugged/vim-snippets/UltiSnips/"$1".snippets ; }
vsnp() { vi ~/.vim/UltiSnips/"$1".snippets ; }

