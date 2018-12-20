<!---  Intro {{{ --> 
# Kevin's Linux Setup

![desktop-screenshot](https://i.imgur.com/Fpsr8Fc.png)
*Screenshot from my dual-monitor setup.*

This repository contains the dotfiles to increase my workflow efficiency. They
are also for my Linux
[rice](https://www.reddit.com/r/unixporn/comments/3iy3wd/stupid_question_what_is_ricing/cukxwog/).
<!---  }}} Intro -->

<!---  Main Programs {{{ --> 
## Main Programs
* **OS**: [Arch Linux](https://www.archlinux.org/) ([packages](txt/nzxt-pkgs.txt)) 
  * 15s boot time, 25s restart time on an SSD. :smiley:
* **Terminal**: [rxvt-unicode-pixbuf](https://www.wikiwand.com/en/Rxvt) 
* **Shell**: [Zsh](http://zsh.sourceforge.net/) + [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* **Window Manager**: [i3-gaps](https://github.com/Airblader/i3)
* **Editor**: [Neovim](https://github.com/neovim/neovim) ([plugins](dotfiles/.vimrc#L51))
* **File Manager**: [ranger](https://ranger.github.io/)
<!---  }}} Basic Info --> 

<!---  Setup {{{ --> 

## Setup
I wrote [a script](setup.sh) to
symbolically link the files/directories in the repository to the locations
they should be in the system.

<!---  }}} Setup --> 
