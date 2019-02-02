function git-diff-files
	git diff --name-only $argv[1] $argv[2]
end
