function grep-aliases
	set key_aliases ~/aliases/key_aliases
	# rg "^$argv[1]" $key_aliases
	rg $argv[1] $key_aliases
end
