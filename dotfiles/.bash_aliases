in_lab=false
if [ -d "/h/u3/c7/" ]; then
	TERM=xterm-256color
	xmodmap -e "clear Lock"
	in_lab=true
fi

# system
alias l='ls -a'
alias ll='ls -alF'
alias cs='printf "\033c"'
shopt -s dotglob
alias reb="sudo shutdown -r 0"
alias sd="sudo shutdown 0"
alias s="systemctl suspend"

# directories
c() { cd "$@" && ls -a ; }
cd-up() { c $(printf "%0.s../" $(seq 1 $1 )) ; }
alias "c."="cd-up"
alias cdd="c ~/Downloads"
if $in_lab; then
	ff() { firefox $1 ; }
	zip() { tar -zcvf $1.tar.gz $1/ ; }
	alias nau="nautilus ."
else
	alias school="c Documents/School/"

	alias mt="ok ~/Documents/School/136/calc-textbook.pdf"
	alias rcg="c ~/Documents/coding/random-color-generator"
	alias dcr="c ~/Documents/coding/dcr-logger"
	chr() { google-chrome $1 ; }
	alias nem="nemo ."
	
	# 207
	alias 7r="c ~/Documents/School/207/group_0485"
	alias ph1="c ~/Documents/School/207/group_0485/phase1"

	# 221
	alias 221="c ~/Documents/School/221"

	# 258
	alias gob="c ~/Documents/School/258/going-bananas"
fi

# apps
ok() { okular $1 ; }

# config
alias lc="c ~/linux-config"
alias vb="vi ~/.bash_aliases"
alias vv="vi ~/.vimrc"
alias r=". ~/.bashrc"

# git
. ~/.secure
alias gs="git status -u"
alias gpl="git pull --rebase"
alias grbc="git rebase --continue"
alias gps="git push"
alias vig="vi .gitignore"
alias ga="git add -A *"
alias gai="git add .gitignore"
alias gd="git diff -w"
alias gdc="git diff --cached"
alias gstore="git config credential.helper store"
gca(){ git commit -m "$1" ; }
alias gc="git commit"
alias gl="git log"
alias gsl="git shortlog"
alias gst="git stash"
alias gstp="git stash pop"
alias gclear="git stash clear"
gcho() { git checkout $1 ; }
gremotes() {
	git remote set-url --add --push origin $1
	git remote set-url --add --push origin $2
}

# idea
alias jh="echo $JAVA_HOME"
alias jv="java -version"
# alias idea=". ~/Desktop/idea.sh"
# alias idea=". ~/usr/idea-IC-172.4343.14/bin/idea.sh"
# alias jf="export JAVA_HOME=/home/kevin/usr/jdk1.8.0_151 && export PATH=$JAVA_HOME/bin:$PATH"

# g(){ gvim $1 ; }
# md() {
# 	multimarkdown -f -o $1.html $1.md 
# 	if $in_lab; then
# 		ff $1.html
# 	fi
# }

rs(){ redshift -O $(($1 * 1000)) ; }
alias rx="redshift -x"
