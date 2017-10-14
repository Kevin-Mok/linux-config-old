set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

set relativenumber
syntax on
set tabstop=8
set autoindent

call plug#begin('~/.vim/plugged')
Plug 'whatyouhide/vim-gotham'
call plug#end()

colorscheme gotham
