function git-push-new-gitea
    git remote add gitea ssh://git@ataraxy.tk:399/Kevin-Mok/$argv[1].git
    and git push --set-upstream gitea master
end
