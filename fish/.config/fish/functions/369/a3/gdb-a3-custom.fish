function gdb-a3-custom
	printf '\033c' 
	and bear make 
	gdb -ex "run" -ex "bt" \
	--args ./sim -f /home/kevin/school/369/a3/a3/traceprogs/tr-custom-2.ref -m 1 -s 10 -a rand
end
