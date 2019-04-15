function pastebin
    cat $argv[1] | curl -F 'sprunge=<-' http://sprunge.us
end
