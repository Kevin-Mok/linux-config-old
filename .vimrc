" set x=y {{{ "
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
set foldmethod=marker
" }}} set x=y "

autocmd VimResized * wincmd =
autocmd BufNewFile,BufRead .*_aliases set syntax=sh

" vim-plug {{{ "
" plug auto-install
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
Plug 'Kevin-Mok/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
" }}} vim-plug "

" YCM/UltiSnips {{{ "
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<C-tab>"
" }}} YCM/UltiSnips "

call plug#end()
colorscheme gotham256

" Mappings {{{ "
map <F3> :wa<CR>
map <F4> :wqa<CR>
map <F5> :qa!<CR>
map <F7> :AutoSaveToggle<CR>
set pastetoggle=<F9>
map <F10> :PlugInstall<CR>
map <S-Enter> O<ESC>

let mapleader="\<Space>"
nnoremap <leader>e o<ESC>
nnoremap <leader>f za
nnoremap <leader>ff :set foldmethod=marker<CR> zM
nnoremap <leader>m :call cursor(0, len(getline('.'))/2)<CR>
nnoremap <leader>p :LLPStartPreview<CR>
nnoremap <leader>r :.,.+s///g<left><left><left><left><left>
nnoremap <leader>s :set syn=sh<CR>
" }}} Mappings "

" Local Mappings {{{ "
let maplocalleader="-"
autocmd Filetype c inoremap <localleader>s struct pixel 

autocmd Filetype tex inoremap <localleader>t $T$ 
autocmd Filetype tex inoremap <localleader>x $x$-axis 
autocmd Filetype tex inoremap <localleader>y $y$-axis 
" }}} Local Mappings "
