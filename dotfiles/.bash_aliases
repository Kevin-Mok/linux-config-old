in_lab=false
cd_school="d ~/Documents/School";
if [ -d "/h/u3/c7/" ]; then
	TERM=xterm-256color
	xmodmap -e "clear Lock"
	in_lab=true
	cd_school="d ~";
fi

# system
alias l='ls -a'
alias ll='ls -alF'
alias cs='printf "\033c"'
shopt -s dotglob
alias reb="sudo shutdown -r 0"
alias sd="sudo shutdown 0"
alias s="systemctl suspend"
alias hst="history"

# directories
d() { cd "$@" && ls -a ; }
cd_up() { c $(printf "%0.s../" $(seq 1 $1 )) ; }
alias "c."="cd_up"
alias cdd="d ~/Downloads"
if $in_lab; then
	ff() { firefox $1 ; }
	zip() { tar -zcvf $1.tar.gz $1/ ; }
	alias nau="nautilus ."
else
	rt() {
		output="HDMI-0"
		if [ "$1" = "s" ]
		# if [ "${1:0:1}" = "s" ]
		then
			output="DVI-I-1"
		fi

		dir="normal"
		if [ "$2" = "r" ]
		# if [ "${1:1:2}" = "r" ]
		then
			dir="right"
		fi
		if [ "$2" = "l" ]
		then
			dir="left"
		fi

		# echo "xrandr --output \"$output\" --rotate \"$dir\""
		xrandr --output "$output" --rotate "$dir"
	}

	alias ow7="virtualbox startvm W7"
	# alias ow7="VBoxManage startvm W7 --type headless"

	chr() { google-chrome $1 ; }
	alias nem="nemo ."
	alias spt="speedtest"
	alias pg="ping -c 5 google.ca"

	alias mt="ok ~/Documents/School/136/calc-textbook.pdf"
	alias 36t="ok ~/Documents/School/236/236-textbook.pdf"

	alias rcg="d ~/Documents/coding/random-color-generator"
	alias dcr="d ~/Documents/coding/dcr-logger"
fi

# school
alias sch="$cd_school"
alias 136="$cd_school/136"
alias pr2="$cd_school/136/par/2"
alias psy="$cd_school/psy"

	# 209
	alias ll="ls -l"
	alias 209="$cd_school/209"
	alias 9r="$cd_school/209/mokkar"
	alias l3="$cd_school/209/mokkar/lab3"
	alias a1="$cd_school/209/mokkar/a1"

	alias cdf="ssh mokkar@cdf.utoronto.ca"

	ca12() {
		gcc -Wall -std=gnu99 -g -o validate_sin.out validate_sin.c sin_helpers.c
		./validate_sin.out 810620716
	}
	ca1() {
		gcc -Wall -std=gnu99 -g -o count_large.out count_large.c
		# ll | ./count_large.out 4000
		./count_large.out 0 rw------- < ll.txt
	}
	cl3() {
		gcc -Wall -std=gnu99 -g -o split_array.out split_array.c
		./split_array.out 1 2 3 
	}
	c9() { 
		gcc -Wall -std=gnu99 -g -o "${1%.*}.out" "$1" -lm 
	}
	c9r() {
		gc9 $1
		./"${1%.*}.out"
	}
	c9i() {
		gc9 $1
		./"${1%.*}.out" < $2
	}
	mkex() { chmod 700 $1 ; }

# apps
ok() { okular $1 ; }

# config
alias lc="d ~/linux-config"
alias vb="vi ~/.bash_aliases"
alias vv="vi ~/.vimrc"
alias r=". ~/.bashrc"

# git
# . ~/.secure
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
gcm(){ git commit -m "$1" ; }
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
