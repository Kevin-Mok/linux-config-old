function tmux-attach
    tmux a -t $argv[1] || tmux new -s $argv[1]
end
