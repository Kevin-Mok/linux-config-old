function smol-delete
    # delete and show
    set userpass (pass show technology/linux/liteshort)
    set url https://smol.gq
    curl -u $userpass -d 'format=json' \
        -d 'api=delete' \
        -d "short=$argv[1]" \
        $url | jq .
    and curl -u $userpass -d 'format=json' \
        -d 'api=listshort' \
        $url | jq .
end
