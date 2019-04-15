function revert-image
	set img_file 'emptydisk.img'
	switch $argv[1]
		case 1
			set img_file 'onefile.img' 
		case m
			set img_file 'multilevel.img' 
		case l
			set img_file 'largefile.img' 
		case s
			set img_file 'symlink.img' 
	end

    cp imgs{-cp,}/$img_file
end
