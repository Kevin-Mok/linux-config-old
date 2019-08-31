function gen-pass
    if count $argv > /dev/null
        set chars $argv[1]
    else
        set chars 25
    end
    base64 /dev/urandom | head -c $chars
end
