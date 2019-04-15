function redshift-set
    redshift -x && redshift -O (math "$argv[1] * 100") 
end
