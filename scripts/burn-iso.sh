#!/bin/bash

usb_letter="c"
usb="/dev/sd$usb_letter"
iso=""

sudo dd bs=4M if=$iso of=$usb conv=fdatasync status=progress
# sudo dd bs=4M if=$usb of=$iso conv=fdatasync status=progress
