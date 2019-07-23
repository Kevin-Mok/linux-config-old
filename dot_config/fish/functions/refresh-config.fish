function refresh-config
    chezmoi apply
    and sync-shortcuts
    and source ~/.config/fish/key_abbr.fish > /dev/null
    and tmux source-file ~/.tmux.conf
    and fish
end
