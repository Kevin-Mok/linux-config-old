#!/bin/bash

# Backup destination
backup_dest=/run/media/kevin/pc-backup/backups/nzxt

# Labels for backup name
distro=arch
datetime=$(date "+%m.%d-%H.%M")
backupfile="$backup_dest/$datetime-$distro.tar.gz"

sudo tar -czpvf "$backupfile" --exclude=/lost+found --exclude=/mnt --exclude=/proc --exclude=/run --exclude=/sys /
