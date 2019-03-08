function grep-aliases
	set key_aliases /home/kevin/linux-config/aliases/key_aliases
	# grep $argv[1] $key_aliases
	rg "^$argv[1]" $key_aliases 
end
