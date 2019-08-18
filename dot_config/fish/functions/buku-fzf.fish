function buku-fzf
    # buku -p -f 5 | awk -F '\t' 'BEGIN { OFS=FS }; { $2=substr($2, 1, 90); print }' | column -t -s (printf '\t') | fzf --multi | awk '{ print $1 }'
    if test $argv[1] = "fq"
        set ids (buku -t fq -f4 | awk -F '\t' 'BEGIN { OFS=FS }; { sub(/https?:\/\/(www\.)?/, "", $2); $2=substr($2, 1, 45); $3=substr($3, 1, 50); print }' | column -t -s (printf '\t') | fzf --multi --tiebreak end | awk '{ print $1 }')
    else
        set ids (buku -p -f4 | awk -F '\t' 'BEGIN { OFS=FS }; { sub(/https?:\/\/(www\.)?/, "", $2); $2=substr($2, 1, 45); $3=substr($3, 1, 45); print }' | column -t -s (printf '\t') | fzf --multi --tiebreak end | awk '{ print $1 }')
    end

    for id in $ids
        buku -o $id
    end
end
