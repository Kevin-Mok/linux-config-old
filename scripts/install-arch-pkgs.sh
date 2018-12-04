#!/bin/bash

sudo pacman -Sy --needed - < ../txt/pacman-pkgs/pacman-pkgs.txt
sudo trizen -Sy --needed - < ../txt/pacman-pkgs/aur-pkgs.txt
