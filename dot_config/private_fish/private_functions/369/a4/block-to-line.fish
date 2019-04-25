function block-to-line
	set block_size 1024
	set bytes_per_line 16
	math "($block_size*$argv[1])/$bytes_per_line + 1"
end
