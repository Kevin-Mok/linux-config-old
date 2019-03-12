function gdb-a3-break
	printf '\033c' 
	and bear make 
	and gdb -ex "b pagetable.c:147" \
	-ex "run" \
	--args ./sim -f /home/kevin/school/369/a3/a3/traceprogs/tr-simpleloop.ref -m 50 -s 3000 -a rand
end
