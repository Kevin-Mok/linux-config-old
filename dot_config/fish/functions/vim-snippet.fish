function vim-snippet
	set snips_dir "$HOME/.vim/plugged/vim-snippets/UltiSnips"
	$EDITOR $snips_dir/$argv[1].snippets
end
