function create-fish-function
	printf 'function %s\n    \nend' $argv[1] > $fish_fxn_dir/$argv[1].fish
	and cd $fish_fxn_dir
	and $EDITOR $argv[1].fish
end
