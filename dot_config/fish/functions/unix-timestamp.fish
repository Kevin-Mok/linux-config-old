# convert unix timestamp
function unix-timestamp
	date -d @$argv[1]
end
