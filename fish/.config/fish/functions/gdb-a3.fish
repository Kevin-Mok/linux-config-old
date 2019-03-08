function gdb-a3
	# gdb -ex "b safeStopSign.c:96" -ex "run" \
	gdb -ex "run" -ex "bt" \
	# gdb -ex "run" \
	--args ./sim -f /home/kevin/school/369/a3/a3/traceprogs/tr-simpleloop.ref -m 50 -s 3000 -a rand
end
