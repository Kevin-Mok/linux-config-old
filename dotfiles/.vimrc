set relativenumber
set background=dark
" set t_Co=256
filetype plugin on
syntax on
set tabstop=4
set tw=80
set colorcolumn=80
set shiftwidth=4
set autoindent
set mouse=c
set clipboard=unnamedplus

autocmd VimResized * wincmd =

" 'h/u3/c7/05/mokkar/.vim/plugged'
" '~/.vim/plugged'

" plug
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/L9'
" Plug 'vim-scripts/FuzzyFinder'
Plug 'whatyouhide/vim-gotham'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'flazz/vim-colorschemes'
Plug 'felixhummel/setcolors.vim'
Plug '907th/vim-auto-save'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'lervag/vimtex'
Plug 'Valloric/YouCompleteMe'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
" let g:ycm_key_list_select_completion = ['<C-d>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-u>', '<Up>']
let g:ycm_key_list_select_completion = []
let g:ycm_key_list_previous_completion = []
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"

call plug#end()

colorscheme gotham256

map <F3> :wa<CR>
map <F4> :wqa<CR>
map <F5> :qa!<CR>
map <F6> :LLPStartPreview<CR>
map <F7> :AutoSaveToggle<CR>
map <F10> :PlugInstall<CR>
map <Enter> o<ESC>
map <S-Enter> O<ESC>
