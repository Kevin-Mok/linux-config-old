function run-a3
	# 1 = alg, 2 = trace file, 3 = output
	
	set memsize 3
	set swapsize 10
	set alg 'rand'
	switch $argv[1]
		case f
			set alg 'fifo'
			set trace_file 'traceprogs/tr-fifo.ref'
		case l
			set alg 'lru'
			set trace_file 'traceprogs/tr-lru.ref'
		case c
			set alg 'clock'
			set trace_file 'traceprogs/tr-clock.ref'
	end

	switch $argv[2]
		case c
			set trace_file 'traceprogs/tr-custom.ref'
		case s
			set trace_file 'traceprogs/tr-simpleloop.ref'
			set memsize 50
			set swapsize 3000
		case m
			set trace_file 'traceprogs/tr-matmul.ref'
			set memsize 100
			set swapsize 3000
	end

	printf '\033c' 
	# and bear make clean
	and bear make 

	switch $argv[3]
		case f
			./sim -f $trace_file -m $memsize -s $swapsize -a $alg > a3.out 2>&1
		case g
			gdb -ex "run" -ex "bt" -ex "q" \
			--args ./sim -f $trace_file -m $memsize -s $swapsize -a $alg
		case o
			./sim -f $trace_file -m $memsize -s $swapsize -a $alg
	end

	if test (count swapfile.*) -gt 0
		rm swapfile.*
	end
end
