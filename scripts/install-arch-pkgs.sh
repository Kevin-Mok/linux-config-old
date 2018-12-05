#!/bin/bash

# to-do: fix shellscript error?
pacman -Sy --needed - < ../txt/pacman-pkgs/pacman-pkgs.txt
trizen -Sy --needed - < ../txt/pacman-pkgs/aur-pkgs.txt
# sudo pacman -Sy --needed - < ../txt/pacman-pkgs/pacman-pkgs.txt
# sudo trizen -Sy --needed - < ../txt/pacman-pkgs/aur-pkgs.txt
