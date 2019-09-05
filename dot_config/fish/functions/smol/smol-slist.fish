function smol-slist
    curl -u (pass show technology/linux/liteshort) \
        -d 'format=json' \
        -d 'api=listshort' \
        https://smol.gq | jq .
end
