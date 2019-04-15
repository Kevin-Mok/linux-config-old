function gdb-a3-break
	# 1 = trace file, 2 = alg
	set trace_file 'traceprogs/tr-custom.ref'
	set memsize 3
	set swapsize 10
	if test $argv[1] = 's'
		set trace_file 'traceprogs/tr-simpleloop.ref'
		set memsize 50
		set swapsize 3000
	end

	set alg 'rand'
	switch $argv[2]
		case f
			set alg 'fifo'
		case l
			set alg 'lru'
		case c
			set alg 'clock'
	end

	printf '\033c' 
	and bear make 
	and gdb \
	# -ex "b pagetable.c:69" \
	# -ex "b sim.c:158" \
	-ex "b clock.c:29" \
	-ex "run" \
	--args ./sim -f $trace_file -m $memsize -s $swapsize -a $alg
end
