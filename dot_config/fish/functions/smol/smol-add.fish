function smol-add
    if test (count $argv) -eq 2
        curl -d 'format=json' \
            -d "long=$argv[1]" \
            -d "short=$argv[2]" \
            https://smol.gq | jq .
    else
        curl -d 'format=json' -d "long=$argv[1]" https://smol.gq | jq .
    end
end
