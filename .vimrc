" set x=y {{{ "
set relativenumber
set background=dark
" set background=light
" set t_Co=256
filetype plugin on
syntax on
set tabstop=4
set tw=80
set linebreak
set colorcolumn=80
set shiftwidth=4
set autoindent
set mouse=c
set clipboard=unnamedplus
set foldmethod=marker
set linespace=5
" set listchars=tab:\|\
" set list
set cursorcolumn
set cursorline
set timeoutlen=300
" }}} set x=y "

autocmd VimResized * wincmd =
autocmd BufNewFile,BufRead .* set syntax=sh

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
Plug 'flazz/vim-colorschemes'
Plug '907th/vim-auto-save'
	let g:auto_save = 1
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'lervag/vimtex'
Plug 'Valloric/YouCompleteMe'
Plug 'Kevin-Mok/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
	let g:NERDTrimTrailingWhitespace = 1
	let g:NERDSpaceDelims = 1
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dkarter/bullets.vim'
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
map <F9> :LLPStartPreview<CR>
nnoremap <F10> :set paste<CR>p:set nopaste<CR>
map <S-Enter> O<ESC>

" For splits.
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>
" Maximize height/width.
nnoremap <C-g> <C-W>_
nnoremap <C-w> <C-W>|

let mapleader="\<Space>"
nnoremap <leader>e o<ESC>
nnoremap <leader>ff :set foldmethod=marker<CR> zM
nnoremap <leader>h :set hlsearch! hlsearch?<CR>
nnoremap <leader>he :help 
nnoremap <leader>vhe :vert help 
nnoremap <leader>m :call cursor(0, len(getline('.'))/2)<CR>
nnoremap <leader>pli :PlugInstall<CR>
nnoremap <leader>plc :PlugClean<CR>
nnoremap <leader>plu :PlugUpdate<CR>
nnoremap <leader>r :.,.+s///g<left><left><left><left><left>
nnoremap <leader>rl :.s///g<left><left><left>
nnoremap <leader>rv :source $MYVIMRC<CR>
nnoremap <leader>R :%s///g<left><left><left>
nnoremap <leader>s :set syn=sh<CR>
nnoremap <leader>w Vgq
nnoremap <leader>z za
" }}} Mappings "

" Local Mappings {{{ "
let maplocalleader="-"
autocmd Filetype c inoremap <localleader>s struct pixel

autocmd Filetype tex inoremap <localleader>e \exists
autocmd Filetype tex inoremap <localleader>fa \forall
autocmd Filetype tex inoremap <localleader>g \geq
autocmd Filetype tex inoremap <localleader>i \in
autocmd Filetype tex inoremap <localleader>l \leq
autocmd Filetype tex inoremap <localleader>lr \Leftrightarrow
autocmd Filetype tex inoremap <localleader>n \neg
autocmd Filetype tex inoremap <localleader>N \mathbb{N}
autocmd Filetype tex inoremap <localleader>R \Rightarrow
autocmd Filetype tex inoremap <localleader>st such that
autocmd Filetype tex inoremap <localleader>t \times
autocmd Filetype tex inoremap <localleader>T $T$
autocmd Filetype tex inoremap <localleader>v \vee
autocmd Filetype tex inoremap <localleader>w \wedge
autocmd Filetype tex inoremap <localleader>x $x$-axis
autocmd Filetype tex inoremap <localleader>y $y$-axis
autocmd Filetype tex inoremap <localleader>Z \mathbb{Z}
" }}} Local Mappings "
