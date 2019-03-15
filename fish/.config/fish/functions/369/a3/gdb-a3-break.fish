function gdb-a3-break
	# 1 = trace file, 2 = alg
	set trace_file 'traceprogs/tr-custom.ref'
	set memsize 1
	set swapsize 10
	if test $argv[1] = 's'
		set trace_file 'traceprogs/tr-simpleloop.ref'
		set memsize 50
		set swapsize 3000
	end

	printf '\033c' 
	and bear make 
	and gdb -ex "b pagetable.c:69" \
	# -ex "b lru.c:65" \
	-ex "run" \
	--args ./sim -f $trace_file -m $memsize -s $swapsize -a $argv[2]
end
