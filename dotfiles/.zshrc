ZSH_THEME="bira"
# ZSH_THEME="miloshadzic"
# ZSH_THEME="agnoster"

#  default {{{ # 

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob nomatch notify

# If you come from bash you might have to change your $PATH.

# Path to your oh-my-zsh installation.
  export ZSH=/home/kevin/.oh-my-zsh
  export EDITOR=/usr/bin/nvim export VISUAL=/usr/bin/nvim # Set name of the theme to load. Optionally, if you set this to "random" it'll load a random theme each time that oh-my-zsh is loaded.  See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG="en_US.UTF-8"
# export LC_MESSAGES="en_US.UTF-8"
# export LC_ALL="en_US.UTF-8"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#  }}}  default # 

source $ZSH/oh-my-zsh.sh
source ~/linux-config/aliases/zsh_aliases

# ZSH_THEME="bira"
# ZSH_THEME="miloshadzic"
# ZSH_THEME="agnoster"

source $ZSH/custom/antigen.zsh
antigen use oh-my-zsh
antigen bundle last-working-dir 
antigen bundle pass 

antigen bundle hlissner/zsh-autopair
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle softmoth/zsh-vim-mode
antigen bundle desyncr/auto-ls

antigen theme molovo/filthy
antigen apply

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

# pywal
export PATH="${PATH}:${HOME}/.local/bin/:${HOME}/linux-config/scripts:/opt/pycharm-2018.3.1/bin"
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors.sh

xset r rate 200 60

#  laptop specific {{{ # 

# keyboard delay/rate
if [ "$(hostname)" = "x1-carbon" ];
then
	xrandr --dpi 125
	xinput disable "ELAN Touchscreen"
	# enable horizontal scrolling
	# synclient HorizTwoFingerScroll=1
fi

#  }}}  laptop specific # 

# #  autoreload zsh aliases {{{ #

# # File containing aliases;
# ALIAS_FILE="$HOME/linux-config/aliases/zsh_aliases"

# reload_aliases () {
	# # do nothing if there is no $ALIAS_FILE
	# [[ -e ALIAS_FILE ]] || return 1
	# # check if $ALIAS_FILE has been modified since last reload
	# # the modifier `(:A)` resolves any symbolic links
	# if [[ $LAST_ALIAS_RELOAD < $(stat -c %Y ${ALIAS_FILE}(:A)) ]]; then
		# # load aliases
		# source $ALIAS_FILE
		# # update date of last reload
		# LAST_ALIAS_RELOAD=$(date +%s)
	# fi
# }

# # make reload_aliases to be run before each prompt
# autoload -Uz add-zsh-hook
# add-zsh-hook precmd reload_aliases

# #  }}} autoreload zsh aliases #

source /home/kevin/.shortcuts
# source /home/kevin/coding/spotify-lib-vis/src/api-keys.sh
# export pywal colors
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# add-zsh-hook -Uz chpwd (){ ls -a; }

export GPG_TTY=$(tty)
export PASSWORD_STORE_CLIP_TIME=120

# #  perl {{{ #

# PATH="/home/kevin/perl5/bin${PATH:+:${PATH}}"; export PATH;
# PERL5LIB="/home/kevin/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
# PERL_LOCAL_LIB_ROOT="/home/kevin/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
# PERL_MB_OPT="--install_base \"/home/kevin/perl5\""; export PERL_MB_OPT;
# PERL_MM_OPT="INSTALL_BASE=/home/kevin/perl5"; export PERL_MM_OPT;

# #  }}} perl #
