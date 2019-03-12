function run-a3-custom
	printf '\033c' 
	# and bear make clean
	and bear make 
	# and ./sim -f /home/kevin/school/369/a3/a3/traceprogs/tr-custom.ref -m 5 -s 50 -a rand
	and ./sim -f /home/kevin/school/369/a3/a3/traceprogs/tr-custom-2.ref -m 1 -s 10 -a rand

	# rm swapfile.*
end
