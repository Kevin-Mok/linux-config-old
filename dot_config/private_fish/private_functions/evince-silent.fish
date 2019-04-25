function evince-silent
	evince $argv[1] > /dev/null 2>&1&
end
