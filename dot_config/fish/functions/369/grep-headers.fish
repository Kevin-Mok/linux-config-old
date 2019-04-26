function grep-headers
	grep --color=auto -nr --include \*.h $argv[1] ./
end
