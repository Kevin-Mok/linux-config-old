function git-replace-origin
    git remote remove origin
    and git remote add origin $argv[1]
    and git push --set-upstream origin master
end
