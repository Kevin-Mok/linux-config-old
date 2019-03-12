function run-a3
	printf '\033c' 
	# and bear make clean
	and bear make 
	and ./sim -f /home/kevin/school/369/a3/a3/traceprogs/tr-simpleloop.ref -m 50 -s 3000 -a rand

	# rm swapfile.*
end
