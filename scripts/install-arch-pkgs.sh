#!/bin/bash

# to-do: fix shellscript error?
sudo pacman -Sy --needed - < ../txt/pacman-pkgs/pacman-pkgs.txt
# trizen -Sy --needed - < ../txt/pacman-pkgs/aur-pkgs.txt

# sudo pacman -Sy --needed - < ../txt/pacman-pkgs/pacman-pkgs.txt
# sudo pacman -Sy --needed "${cat ../txt/pacman-pkgs/pacman-pkgs.txt}"
# sudo trizen -Sy --needed - < ../txt/pacman-pkgs/aur-pkgs.txt
