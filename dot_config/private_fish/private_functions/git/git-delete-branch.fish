function git-delete-branch
	git push origin --delete $argv[1]
	and git branch -D $argv[1]
end
