# Kevin's Linux Setup

![desktop-screenshot](https://i.imgur.com/hrSnXmV.png)
*Screenshot from my laptop config.*

This repository contains the dotfiles for my Linux ["rice"](https://www.reddit.com/r/unixporn/comments/3iy3wd/stupid_question_what_is_ricing/cukxwog/). It's always going to
be a work-in-progress, but it's satisfactory for the time being. My dotfiles are
primarily focused on workflow efficiency.

## Basic Info
* **OS**: Linux Mint 18.2
* **Terminal**: Terminator
* **Shell**: Bash
* **WM**: [i3-gaps](https://github.com/Airblader/i3)
* **Editor**: Vim

## Setup
I wrote a couple simple scripts
([`set-configs.sh`](https://github.com/Kevin-Mok/linux-config/blob/master/configs/set-configs.sh) &
[`set-dotfiles.sh`](https://github.com/Kevin-Mok/linux-config/blob/master/dotfiles/set-dotfiles.sh))
to symbolically link the files in the repository to the locations they should be
in the system. `set-configs.sh` sets different config files for my PC and laptop
as they have slightly different needs (multiple monitors, screen size, etc.).

## Programs Used
* [Bash-it](https://github.com/Bash-it/bash-it/)
* [i3blocks](https://github.com/vivien/i3blocks)
* [Various Vim plug-ins](https://github.com/Kevin-Mok/linux-config/blob/f922e56b50635c9344b26f9088e37acea5647359/dotfiles/vimrc#L38)
* [Neofetch](https://github.com/dylanaraps/neofetch)
* [pipes.sh](https://github.com/pipeseroni/pipes.sh)

### Switch From/Try Out:
* Arch Linux
* Bash ➔ [Zsh](http://zsh.sourceforge.net/)
* Terminator ➔ [rxvt](https://www.wikiwand.com/en/Rxvt)
* Vim(-based) apps:
  * Vim ➔ [Neovim](https://github.com/neovim/neovim)
  * Google Chrome ➔ [qutebrowser](https://github.com/qutebrowser/qutebrowser)
  * Nemo/Thunar ➔ [ranger](https://ranger.github.io/)

<!-- below are more minor stylistic goals that don't feel the need to explicitly
include
* i3blocks ➔ Polybar
* Discord ➔ CLI IRC app -->
