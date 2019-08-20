function git-push-new-gitea
    git remote add gitea git@git.ataraxy.tk:Kevin-Mok/$argv[1].git
    and git push --set-upstream gitea master
end
