" set runtimepath+=~/.vim_runtime
" 
" source ~/.vim_runtime/vimrcs/basic.vim
" source ~/.vim_runtime/vimrcs/filetypes.vim
" source ~/.vim_runtime/vimrcs/plugins_config.vim
" source ~/.vim_runtime/vimrcs/extended.vim
" 
" try
" source ~/.vim_runtime/my_configs.vim
" catch
" endtry

set relativenumber
set background=dark
syntax on
set tabstop=4
set autoindent

" 'h/u3/c7/05/mokkar/.vim/plugged'
" '~/.vim/plugged'
call plug#begin('h/u3/c7/05/mokkar/.vim/plugged')

Plug 'vim-scripts/L9'
Plug 'vim-scripts/FuzzyFinder'
" Plug 'whatyouhide/vim-gotham'

call plug#end()

colorscheme gotham
