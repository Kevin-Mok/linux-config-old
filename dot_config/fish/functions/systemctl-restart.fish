function systemctl-restart
    sudo systemctl restart $argv[1]
    and sudo systemctl status $argv[1]
end
