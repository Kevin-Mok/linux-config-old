function server-pages
    set sites git.ataraxy.tk khkm.tk cal.khkm.tk mnpd.gq/k-bg pste.gq smol.gq twem.tk
    set titles "Kevin Mok's Gitea" "Kevin Mok" "BaÃ¯kal server" "k-bg" "hastebin" "Kevin's URL Shortener" "Index of /"
    # set sites mnpd.gq/k-bg
    # set titles "k-bg"

    for i in (seq (count $sites))
        set title (wget -qO- "$sites[$i]" | perl -l -0777 -ne 'print $1 if /<title.*?>\s*(.*?)\s*<\/title/si' | recode html)
        if test $title = $titles[$i]
            set symbol "✓"
        else
            set symbol "✗"
        end
        printf "[$symbol] $sites[$i]\n"
    end
end

