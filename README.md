>  Intro {{{ > 
# Kevin's Linux Setup

>  pictures {{{ > 
![desktop-screenshot](https://i.imgur.com/mbu9aYf.png)
*Screenshot from my dual-monitor desktop config.*

![laptop-screenshot](https://i.imgur.com/hrSnXmV.png)
*Screenshot from my laptop config.*
>  }}} pictures > 

This repository contains the dotfiles for my Linux
[rice](https://www.reddit.com/r/unixporn/comments/3iy3wd/stupid_question_what_is_ricing/cukxwog/).
It's always going to be a work-in-progress, but it's satisfactory for the time
being. My dotfiles are primarily focused on workflow efficiency.
>  }}} Intro > 

>  Basic Info {{{ > 
## Basic Info
* **OS**: Linux Mint 18.2
* **Terminal**: [urxvt](https://www.wikiwand.com/en/Rxvt) 
* **Shell**: [Zsh](http://zsh.sourceforge.net/)
* **WM**: [i3-gaps](https://github.com/Airblader/i3)
* **Editor**: [Neovim](https://github.com/neovim/neovim)
* **File Explorer**: [ranger](https://ranger.github.io/)
>  }}} Basic Info > 

>  Setup {{{ > 
## Setup
I wrote a couple simple scripts
([`set-configs.sh`](https://github.com/Kevin-Mok/linux-config/blob/master/configs/set-configs.sh) &
[`set-dotfiles.sh`](https://github.com/Kevin-Mok/linux-config/blob/master/dotfiles/set-dotfiles.sh))
to symbolically link the files/directories in the repository to the locations
they should be in the system. `set-configs.sh` sets different config files for
my PC and laptop as they have slightly different needs (multiple monitors,
screen size, etc.).
>  }}} Setup > 

>  Programs Used {{{ > 
## Programs Used
* [Bash-it](https://github.com/Bash-it/bash-it/) - For autocompletion and themes.
* [cmatrix](https://github.com/abishekvashok/cmatrix) - Matrix screensaver.
* [i3blocks](https://github.com/vivien/i3blocks) - Alternative status bar for
  i3wm.
* [Various Vim plug-ins](https://github.com/Kevin-Mok/linux-config/blob/4dce53aafcd7cdafe888a92ec0dd6466cc07ca9f/dotfiles/vimrc#L36)
* [Neofetch](https://github.com/dylanaraps/neofetch) - CLI-based app to display
  system information.
* [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) - For Zsh config and
  themes.
* [pipes.sh](https://github.com/pipeseroni/pipes.sh) - Animated pipes
  screensaver.
* [pywal](https://github.com/dylanaraps/pywal) - Color scheme coordinator.
>  }}} Programs Used > 

>  Switch From (To-Do) {{{ > 
## Switch From (To-Do)
* Linux Mint ➔ Arch Linux
* Vim(-based) apps:
  * Google Chrome ➔ [qutebrowser](https://github.com/qutebrowser/qutebrowser)
>  }}} From (To-Do) > 
