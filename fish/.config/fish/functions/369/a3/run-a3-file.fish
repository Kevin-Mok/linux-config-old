function run-a3-file
	printf '\033c' 
	# and bear make clean
	and bear make 
	# and ./sim -f /home/kevin/school/369/a3/a3/traceprogs/tr-simpleloop.ref -m 50 -s 3000 -a rand > task-1.out
	and ./sim -f /home/kevin/school/369/a3/a3/traceprogs/tr-simpleloop.ref -m 50 -s 3000 -a rand > task-1.out 2>&1

	# rm swapfile.*
end
