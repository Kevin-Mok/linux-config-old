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
alias reb="sudo shutdown -r 0"
alias sd="sudo shutdown 0"
alias s="systemctl suspend"
alias hst="history"
alias topo="top -o %MEM"
alias rmsw="rm .sw*"
# }}} System #

# Directories {{{ #
# unalias c
d() { cd "$@" && ls -a ; }
cd_up() { d $(printf "%0.s../" $(seq 1 $1 )) ; }
alias "d."="cd_up"
alias dd="d ~/Downloads"
# }}}  #

ok() { okular $1 ; }

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

# UltiSnips {{{ #
usnp_dir="~/.vim/plugged/vim-snippets/UltiSnips"
alias snp="d $usnp_dir"
vsnp() { vi ~/.vim/plugged/vim-snippets/UltiSnips/"$1".snippets ; }
alias tmsp="vi $usnp_dir/texmath.snippets"
# }}} #
