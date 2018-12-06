#!/bin/bash

# Backup destination
backup_dest="/run/media/kevin/pc-backup/backups/nzxt"
exclude_dirs_list="/home/kevin/linux-config/txt/exlude-dirs-backup.txt"

# Labels for backup name
distro="arch"
datetime=$(date "+%m.%d-%H.%M")
backup_file="$backup_dest/$datetime-$distro.tar.gz"

sudo tar -czpvf "$backup_file" --exclude-from="$exclude_dirs_list" /
