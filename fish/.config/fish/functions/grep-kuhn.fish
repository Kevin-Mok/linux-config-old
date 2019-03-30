function grep-kuhn
    pdfgrep -n $argv[1] -B $argv[2] -A $argv[3] /home/kevin/school/hps/w5-6-historicism/*/kuhn*.pdf > $argv[1].txt
    and nvim $argv[1].txt -c "/$argv[1]"
end
