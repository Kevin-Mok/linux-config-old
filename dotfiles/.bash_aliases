in_lab=false
if [ -d "/h/u3/c7/" ]; then
	TERM=xterm-256color
	xmodmap -e "clear Lock"
	in_lab=true
fi

# system
alias l='ls -a'
c() { cd $@ && l ; }
alias ll='ls -alF'
alias cs='printf "\033c"'
shopt -s dotglob
alias reb="sudo shutdown -r 0"
alias sd="sudo shutdown 0"
alias s="systemctl suspend"

# directories
alias cdr="c ~/../../"
alias cdd="c ~/Downloads"
if $in_lab; then
	alias mt="okular ~/Downloads/Textbook.pdf"

	# 207
	alias 7r="cd ~/207/group_0485/"
	alias ph1="cd ~/207/group_0485/phase1"

	# 258
	alias p1="cd ~/258/258-labs-self/l7/p1"
	alias l7="cd ~/258/258-labs-self/l7"
	alias lab="cd ~/258/258-labs-self"

else
	alias mt="okular ~/Documents/School/221/Textbook.pdf"
	alias rcg="c ~/Documents/coding/random-color-generator"

	# 207
	alias 7r="c ~/Documents/School/207/group_0485"
	alias ph1="c ~/Documents/School/207/group_0485/phase1"

	# 221
	alias 221="c ~/Documents/School/221"
fi

# config
alias lc="c ~/linux-config"
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
<<<<<<< HEAD
gc(){
	git commit -m "$1"
}
alias gcm="git commit"
 
=======
gc(){ git commit -m "$1" ; }
alias gcm="git commit"
alias gl="git log"
alias gsl="git shortlog"

>>>>>>> 0feebeeb849fd3764551b913a2cfd5f71f51b579
# idea
alias jh="echo $JAVA_HOME"
alias jv="java -version"
# alias idea=". ~/Desktop/idea.sh"
# alias idea=". ~/usr/idea-IC-172.4343.14/bin/idea.sh"
# alias jf="export JAVA_HOME=/home/kevin/usr/jdk1.8.0_151 && export PATH=$JAVA_HOME/bin:$PATH"

# g(){ gvim $1 ; }

rs(){ redshift -O $(($1 * 1000)) ; }
alias rx="redshift -x"
