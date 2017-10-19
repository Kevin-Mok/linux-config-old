# system
alias bs="xmodmap -e \"clear Lock\""
alias c="clear"
shopt -s dotglob
alias reb="sudo shutdown -r 0"
alias sd="sudo shutdown 0"
alias s="systemctl suspend"

# directories
alias cdr="cd ~/../../"
alias cdd="cd ~/Downloads"
alias 221="cd ~/Documents/School/221"
alias 221lt="okular ~/Downloads/Textbook.pdf"

alias p1="cd ~/258/258-labs-self/l5/p1"
alias l5="cd ~/258/258-labs-self/l5"
alias lab="cd ~/258/258-labs-self"

# bash
alias vb="vim ~/.bash_aliases"
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
gc(){
	git commit -m "$1"
}

# redshift
rs(){
    redshift -O $1
}
