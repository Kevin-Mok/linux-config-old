# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

if [ ! -d "/h/u3/c7/" ]; then
	export JAVA_HOME=/home/kevin/usr/java/jdk1.8.0_151/bin
	export PATH=$JAVA_HOME/bin:$PATH

	export QSYS_ROOTDIR="/home/kevin/usr/altera_lite/16.0/quartus/sopc_builder/bin"
	export PATH=$PATH:/home/kevin/usr/altera_lite/16.0/quartus/bin/
	export PATH=$PATH:/home/kevin/usr/altera_lite/16.0/modelsim_ase/linuxaloem
fi

xmodmap -e "clear Lock"
