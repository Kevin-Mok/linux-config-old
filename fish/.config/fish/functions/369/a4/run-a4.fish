function run-a4
	# 1 = ex, 2 = img
	printf '\033c' 
	# and bear make clean
	bear make 

	set img_file 'imgs/emptydisk.img'
	switch $argv[2]
		case 1
			set img_file 'imgs/onefile.img' 
		case m
			set img_file 'imgs/multilevel.img' 
		case l
			set img_file 'imgs/largefile.img' 
	end

	switch $argv[1]
		case h
			./ext2_helpers_tester 'imgs/multilevel.img' '/level1/level2/bfile'
		case hg
			gdb -ex "run" -ex "bt" -ex "q" \
			--args ./ext2_helpers_tester './imgs/multilevel.img' '/level1/level2/level3//'
		case m
			./ext2_mkdir $img_file '/'
			# ./ext2_mkdir 'imgs/multilevel.img' '/level1/level2/bfile'
		case '*'
			./readimage $img_file
	end
end
