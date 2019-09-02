function sync-alt-cal
    set alt_cal_dir /home/kevin/.calcurse/alt-cals
    calcurse-caldav --syncdb $alt_cal_dir/$argv[1]/sync.db \
        --config $alt_cal_dir/$argv[1]/caldav/config \
        --datadir $alt_cal_dir/$argv[1]
end
