function grep-pdf
    pdfgrep -n $argv[1] -B $argv[2] -A $argv[3] (fd -e pdf --no-ignore-vcs)
end
