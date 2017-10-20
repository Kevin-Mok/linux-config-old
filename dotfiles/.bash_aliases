# system
alias c="clear"
shopt -s dotglob
alias reb="sudo shutdown -r 0"
alias sd="sudo shutdown 0"
alias s="systemctl suspend"

# directories
alias cdr="cd ~/../../"
alias cdd="cd ~/Downloads"
alias 221="cd ~/Documents/School/221"
alias mt="okular ~/Documents/School/221/Textbook.pdf"
alias mlt="okular ~/Downloads/Textbook.pdf"
	# 258 (lab)
	alias p2="cd ~/258/258-labs-self/l5/p2"
	alias l5="cd ~/258/258-labs-self/l5"
	alias lab="cd ~/258/258-labs-self"

# config
alias vb="gvim ~/.bash_aliases"
alias vv="gvim ~/.vimrc"
alias rba=". ~/.bashrc"

# git
. ~/.secure
alias gs="git status"
alias gpl="git pull"
alias gps="git push"
alias vig="vi .gitignore"
alias ga="git add *"
alias gai="git add .gitignore"
alias gd="git diff"
alias gdc="git diff --cached"
alias gstore="git config credential.helper store"
gc(){
	git commit -m "$1"
}

g(){
	gvim $1
}

rs(){
    redshift -O $1
}
