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
	
	alias mt="okular ~/Downloads/Textbook.pdf"
	alias nau="nautilus ."

	# 207
	alias 7r="c ~/207/group_0485/"
	alias ph2="c ~/207/group_0485/phase2"
	alias fph2="ff ~/207/group_0485/phase2/p2.html"
	alias gin="vi ~/207/group_0485/phase2/commit_issue_numbers.txt"
	alias rp2="ph2 && ./src/compile_project.sh"

	# 258
	alias l52="c ~/258/258-labs-self/l5/p2"
	alias p3="c ~/258/258-labs-self/l7/p3"
	alias l7="c ~/258/258-labs-self/l7"
	alias lab="c ~/258/258-labs-self"
	alias rad="echo radix unsigned"
	alias go="c ~/258/going-bananas"
	alias gob="c ~/258/going-bananas/banana"
	alias gom="c ~/258/going-bananas/monkey"

else
	alias mt="okular ~/Documents/School/221/Textbook.pdf"
	alias rcg="c ~/Documents/coding/random-color-generator"
	chr() { google-chrome $1 ; }
	
	# 207
	alias 7r="c ~/Documents/School/207/group_0485"
	alias ph1="c ~/Documents/School/207/group_0485/phase1"

	# 221
	alias 221="c ~/Documents/School/221"

	# 258
	alias gob="c ~/Documents/School/258/going-bananas"
fi

# config
alias lc="c ~/linux-config"
alias vb="vi ~/.bash_aliases"
alias vv="vi ~/.vimrc"
alias r=". ~/.bashrc"

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
gca(){ git commit -m "$1" ; }
alias gc="git commit"
alias gl="git log"
alias gsl="git shortlog"
alias gst="git stash"
alias gstp="git stash pop"
alias gclear="git stash clear"

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
