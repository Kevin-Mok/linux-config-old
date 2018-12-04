#!/bin/bash

usb=/dev/sdc
iso=/run/media/kevin/pc-backup/isos/w10.iso

sudo dd bs=4M if=$iso of=$usb conv=fdatasync status=progress
