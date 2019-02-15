function git-push-multiple
	git remote set-url --add --push origin $argv[1]
	and git remote set-url --add --push origin $argv[2]
	and git remote -v
end
