xrandr --setprovideroutputsource modesetting NVIDIA-0
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xrandr --auto
exec i3
