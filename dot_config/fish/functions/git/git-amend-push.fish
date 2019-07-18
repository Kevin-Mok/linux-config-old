function git-amend-push
	git add -A
	and git commit --amend --no-edit -S 
	and git push --force
end
