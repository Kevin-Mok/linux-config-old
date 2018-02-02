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
alias "c."="cd_up"
alias cdd="d ~/Downloads"
alias dsnip="d ~/.vim/plugged/vim-snippets/UltiSnips/"
alias csnip="d ~/.vim/UltiSnips/"
vdsnip() { vi ~/.vim/plugged/vim-snippets/UltiSnips/"$1".snippets ; }
vsnip() { vi ~/.vim/UltiSnips/"$1".snippets ; }

# apps
ok() { okular $1 ; }

# config
alias lc="d ~/linux-config/"
alias lca="d ~/linux-config/aliases"
alias vb="vi $alias_folder/.bash_aliases"
alias vs="vi $alias_folder/.school_aliases"
alias vs9="vi $alias_folder/.209_aliases"
alias vv="vi ~/.vimrc"
alias r=". ~/.bashrc"

# redshift
rs(){ redshift -O $(($1 * 1000)) ; }
alias rx="redshift -x"
