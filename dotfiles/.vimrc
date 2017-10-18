set relativenumber
set background=dark
syntax on
set tabstop=4
set shiftwidth=4
set autoindent
set mouse=c

" 'h/u3/c7/05/mokkar/.vim/plugged'
" '~/.vim/plugged'
call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/L9'
Plug 'vim-scripts/FuzzyFinder'
Plug 'whatyouhide/vim-gotham'

call plug#end()

colorscheme gotham

map <Enter> o<ESC>
map <S-Enter> O<ESC>
