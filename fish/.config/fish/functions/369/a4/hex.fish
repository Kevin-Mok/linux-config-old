function hex
	switch $argv[1]
		case h
			# print dec/bin.
			printf "%d " (echo "ibase=16;obase=A;$argv[2]" | bc)
			printf "%d\n" (echo "ibase=16;obase=2;$argv[2]" | bc)
		case d
			# print hex/bin.
			printf "%s " (echo "obase=16;$argv[2]" | bc) 
			printf "%d\n" (echo "obase=2;$argv[2]" | bc)
	end
end
