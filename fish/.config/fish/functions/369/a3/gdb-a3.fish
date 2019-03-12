function gdb-a3
	printf '\033c' 
	and bear make 
	gdb -ex "run" -ex "bt" \
	--args ./sim -f /home/kevin/school/369/a3/a3/traceprogs/tr-simpleloop.ref -m 50 -s 3000 -a rand
end
