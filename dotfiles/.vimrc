set relativenumber
set background=dark
set t_Co=256
syntax on
set tabstop=4
set shiftwidth=4
set autoindent
set mouse=c
set clipboard=unnamedplus

autocmd VimResized * wincmd =

" 'h/u3/c7/05/mokkar/.vim/plugged'
" '~/.vim/plugged'
call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/L9'
Plug 'vim-scripts/FuzzyFinder'
Plug 'whatyouhide/vim-gotham'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'felixhummel/setcolors.vim'
Plug 'flazz/vim-colorschemes'

call plug#end()

colorscheme gotham256

map <F3> :wa<CR>
map <F4> :wqa<CR>
map <F5> :qa<CR>
map <F10> :PlugInstall<CR>
" map <Enter> o<ESC>
" map <S-Enter> O<ESC>
