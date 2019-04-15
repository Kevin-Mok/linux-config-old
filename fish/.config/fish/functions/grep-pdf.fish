function grep-pdf
    pdfgrep -n $argv[1] (fd -e pdf --no-ignore-vcs)
end
