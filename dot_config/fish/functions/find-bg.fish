function find-bg
    find ~/Pictures/Backgrounds/ -regextype sed -regex ".*$argv[1].*[[:digit:]]\{1,\}.*" -printf "%f\n" | sort -r | head -n1 | cut -f1 -d '.'
end
