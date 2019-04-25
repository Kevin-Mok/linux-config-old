function wc-pdf
    pdftotext $argv[1] - | wc -w
end
