# system
alias c="clear"
shopt -s dotglob
alias reb="sudo shutdown -r 0"
alias sd="sudo shutdown 0"
alias s="systemctl suspend"

# directories
alias cdr="cd ~/../../"
alias cdd="cd ~/Downloads"
alias a2="cd ~/Documents/School/207/mokkar/a2"
alias a2n="a2 && vi notes.txt"
alias rcg="cd ~/Documents/coding/random-color-generator"
	# 221
	alias 221="cd ~/Documents/School/221"
	alias mt="okular ~/Documents/School/221/Textbook.pdf"
	alias mlt="okular ~/Downloads/Textbook.pdf"
	# 258 (lab)
	alias p2="cd ~/258/258-labs-self/l5/p2"
	alias l5="cd ~/258/258-labs-self/l5"
	alias lab="cd ~/258/258-labs-self"

# config
alias vb="vi ~/.bash_aliases"
alias vv="vi ~/.vimrc"
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

# idea
alias jh="echo $JAVA_HOME"
alias jv="java -version"
# alias idea=". ~/Desktop/idea.sh"
# alias idea=". ~/usr/idea-IC-172.4343.14/bin/idea.sh"
# alias jf="export JAVA_HOME=/home/kevin/usr/jdk1.8.0_151 && export PATH=$JAVA_HOME/bin:$PATH"

g(){
	gvim $1
}

rs(){
	redshift -O $(($1 * 1000))
}
