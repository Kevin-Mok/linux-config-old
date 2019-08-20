function backup-phone-pics
    rsync -rave 'ssh -p 8022' 192.168.0.12:/data/data/com.termux/files/home/storage/dcim/Camera /mnt/linux-files/Pictures/pixel
    and rsync -rave 'ssh -p 8022' 192.168.0.12:/data/data/com.termux/files/home/storage/pictures/ /mnt/linux-files/Pictures/pixel/pictures
end
