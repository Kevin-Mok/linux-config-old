function drop-grocery
    set collection 'stores'
    switch $argv[1]
        case f
            set collection 'foods'
    end
    mongo GroceryAPI --eval "db.$collection.drop()"
end
