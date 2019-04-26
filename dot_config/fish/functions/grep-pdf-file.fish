function grep-pdf-file
    pdfgrep -n $argv[1] -B $argv[2] -A $argv[3] (fd -e pdf --no-ignore-vcs)  > grep-$argv[1].txt
    and nvim grep-$argv[1].txt -c "/$argv[1]"
end
