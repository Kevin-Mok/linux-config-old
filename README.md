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
```
> systemd-analyze
Startup finished in 2.341s (kernel) + 1.085s (userspace) = 3.426s 
graphical.target reached after 1.085s in userspace
```
* **Terminal**: [rxvt-unicode-pixbuf](https://www.wikiwand.com/en/Rxvt) 
* **Shell**: [Zsh](http://zsh.sourceforge.net/) + [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* **Window Manager**: [i3-gaps](https://github.com/Airblader/i3)
* **Editor**: [Neovim](https://github.com/neovim/neovim) ([plugins](dotfiles/.vimrc#L51))
* **File Manager**: [ranger](https://ranger.github.io/)
<!---  }}} Basic Info --> 

<!---  Setup {{{ --> 

## Setup
I use
[Stow](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)
to symbolically link the configs/dotfiles.

<!---  }}} Setup --> 
