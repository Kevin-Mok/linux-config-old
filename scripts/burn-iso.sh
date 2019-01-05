#!/bin/bash

usb_letter="d1"
usb="/dev/sd$usb_letter"
iso="/run/media/kevin/iomega/w10.iso"

# sudo dd bs=4M if=$iso of=$usb conv=fdatasync status=progress
sudo dd bs=4M if=$usb of=$iso conv=fdatasync status=progress
