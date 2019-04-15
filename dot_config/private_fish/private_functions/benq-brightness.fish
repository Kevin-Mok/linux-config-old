function benq-brightness
	xrandr --output HDMI-0 --gamma 1:0.8:0 --brightness (math $argv[1] / 100)
end
