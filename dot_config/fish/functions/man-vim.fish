function man-vim
    nvim -c ":Man $argv[1]" -c "only"
end
