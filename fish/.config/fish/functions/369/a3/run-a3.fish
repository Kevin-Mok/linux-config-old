function run-a3
	# 1 = trace file, 2 = alg, 3 = output
	
	set trace_file 'traceprogs/tr-custom.ref'
	set memsize 3
	set swapsize 10
	if test $argv[1] = 's'
		set trace_file 'traceprogs/tr-simpleloop.ref'
		set memsize 50
		set swapsize 3000
	end

	printf '\033c' 
	# and bear make clean
	and bear make 

	switch $argv[3]
		case f
			./sim -f $trace_file -m $memsize -s $swapsize -a $argv[2] > a3.out 2>&1
		case g
			gdb -ex "run" -ex "bt" -ex "q" \
			--args ./sim -f $trace_file -m $memsize -s $swapsize -a $argv[2]
		case o
			./sim -f $trace_file -m $memsize -s $swapsize -a $argv[2]
	end

	# rm swapfile.*
end
