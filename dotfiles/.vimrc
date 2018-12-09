" set x=y {{{ "
au BufWinEnter * set relativenumber
" set background=dark
set encoding=utf-8
set background=light
" set t_Co=256
filetype plugin on
syntax on
set tabstop=4
set tw=80
set linebreak
" set colorcolumn=80
set shiftwidth=4
set autoindent
set mouse=c
set clipboard+=unnamedplus
set foldmethod=marker
set linespace=5
" cursor indicator {{{ "

" set listchars=tab:\|\
" set list
" set cursorcolumn
" set cursorline

" }}} cursor indicator "

set timeoutlen=500
set hlsearch
set noswapfile
" }}} set x=y "

" commands for file types {{{ "

autocmd VimResized * wincmd =
autocmd BufNewFile,BufRead .* set syntax=sh
autocmd Filetype css,htmldjango,html,tex,txt,markdown set tabstop=2 shiftwidth=2 expandtab
autocmd BufRead commit-msg.txt set filetype=gitcommit tw=72
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd Filetype markdown set textwidth=0

autocmd BufWritePost key_*.txt !sync-shortcuts
autocmd VimLeave *.tex !tex-clean %

" " auto-reload vimrc {{{ "

" augroup myvimrc
	" au!
	" au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
" augroup END

" " }}} auto-reload vimrc "

" }}} commands for file types "

" vim-plug {{{ "
" plug auto-install
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

" prequisite for other plugins
Plug 'vim-scripts/L9'

" find files from within Vim
" Plug 'vim-scripts/FuzzyFinder'

" Gotham color scheme
" Plug 'whatyouhide/vim-gotham'

" " collection of Vim color schemes
" Plug 'flazz/vim-colorschemes'

" " preview Vim color scheme easily within Vim
" Plug 'xolox/vim-colorscheme-switcher'
" " prerequisite for above plugin
" Plug 'xolox/vim-misc'

" automatically save buffers upon returning to normal mode
Plug '907th/vim-auto-save'
	let g:auto_save = 1

" provides various functionality for writing LaTeX in Vim
Plug 'lervag/vimtex'
	au BufWritePost *.tex silent call Tex_RunLaTeX()
	au BufWritePost *.tex silent !pkill -USR1 xdvi.bin
	let g:vimtex_view_general_viewer = 'zathura'
    let g:vimtex_quickfix_latexlog = {
          \ 'overfull' : 0,
          \ 'underfull' : 0,
          \ 'global' : 0,
          \ 'unused' : 0,
          \}

" auto-completion for various languages
Plug 'Valloric/YouCompleteMe'

" wrote short bits of text that expand into whatever you want
" demo: https://www.youtube.com/watch?v=Zik6u0klD40
Plug 'SirVer/ultisnips'
	" better key bindings for UltiSnipsExpandTrigger
	let g:UltiSnipsExpandTrigger = "<tab>"
	let g:UltiSnipsJumpForwardTrigger = "<tab>"
	let g:UltiSnipsJumpBackwardTrigger = "<C-tab>"

" custom snippets
Plug 'Kevin-Mok/vim-snippets'

" to make YouCompleteMe work with UltiSnips (both use Tab)
Plug 'ervandew/supertab'
	" make YCM compatible with UltiSnips (using supertab)
	let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
	let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
	let g:SuperTabDefaultCompletionType = '<C-n>'

" easily comment/uncomment lines
Plug 'scrooloose/nerdcommenter'
	let g:NERDTrimTrailingWhitespace = 1
	let g:NERDSpaceDelims = 1

" add quotes/brackets around chunks of text easily
Plug 'tpope/vim-surround'

" navigate around file easily and precisely
Plug 'easymotion/vim-easymotion'
	map <Space> <Plug>(easymotion-prefix)

" status bar displaying various info about the current buffer
Plug 'vim-airline/vim-airline'
	let g:airline_section_c = '%F'
Plug 'vim-airline/vim-airline-themes'
	let g:airline_powerline_fonts = 1

" continue Markdown lists when started
Plug 'dkarter/bullets.vim'

" coordinate Vim color scheme with terminal color scheme
Plug 'dylanaraps/wal.vim'

" repeat plugin commands
Plug 'tpope/vim-repeat'

" better Django support
Plug 'tweekmonster/django-plus.vim'

" auto-close brackets
Plug 'jiangmiao/auto-pairs'
	let g:AutoPairsMapSpace = 0

Plug 'henrik/vim-indexed-search'
Plug 'PotatoesMaster/i3-vim-syntax'
" vim file explorer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'terryma/vim-multiple-cursors'
	" let g:multi_cursor_select_all_word_key='<C-a>'

call plug#end()

" colorscheme gotham256
colorscheme wal

" }}} vim-plug "

" Mappings {{{ "

" function keys {{{ "
map <F4> :xa<CR>
map <F5> :q!<CR>
" map <F6> :make -C ~/Documents/resume cv<CR>
" map <F7> :AutoSaveToggle<CR>
map <F9> :VimtexCompile<CR>:VimtexView<CR>
" map <F9> :VimtexCompile<CR>
nnoremap <F10> :set paste<CR>"+p:set nopaste<CR>
" }}} function keys "

map <S-Enter> O<ESC>
" swap text visually
vnoremap <C-P> <Esc>`.``gvP``P

" splits {{{ "
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>
" Maximize height/width.
nnoremap <C-g> <C-W>_
nnoremap <C-w> <C-W>|
" }}} splits "

" leader mappings {{{ "
let mapleader="\<Space>"
" replace vim-commentary Markdown comments with HTML
nnoremap <leader>cmt :%s/>\(.*\)>/<!---\1-->/g<CR>
" delete entire buffer
nnoremap <leader>dg ggdG
" delete line into system clipboard
nnoremap <leader>D "+dd
" delete entire buffer into system clipboard
nnoremap <leader>DA "+ggdG
" find merge conflicts
nnoremap <leader>fc /[<>=\|]\{7\}<CR>
" reload folds
nnoremap <leader>ff :set foldmethod=marker<CR> zM
" toggle search highlighting
nnoremap <leader>h :set hlsearch! hlsearch?<CR>
" help
nnoremap <leader>he :help 
nnoremap <leader>ht :set tabstop=2 shiftwidth=2 expandtab<CR>
nnoremap <leader>vhe :vert help 
" move cursor to middle of line
nnoremap <leader>m :call cursor(0, len(getline('.'))/2)<CR>
" apply normal command to selection
vnoremap <leader>n q:anorm 
" don't wrap lines
nnoremap <leader>nw :set nowrap<CR>
" check if in neovim
nnoremap <leader>nv :echo has('nvim')<CR>
" Plug commands
nnoremap <leader>pli :PlugInstall<CR>
nnoremap <leader>plc :PlugClean<CR>
nnoremap <leader>plu :PlugUpdate<CR>
" don't break lines
nnoremap <leader>py :set tw=0<CR>
" reload file
nnoremap <leader>r :e<CR>
" replace in next x lines
nnoremap <leader>re q:i.,.+s///g<ESC>Fsi
" replace in line
nnoremap <leader>rl q:i.s///g<left><left><left>
" replace in visual selection
vnoremap <leader>r q:is///g<ESC>3ha
" reload vim config
nnoremap <leader>rv :source $MYVIMRC<CR>
" replace in entire file
nnoremap <leader>R q:i%s///g<ESC>2F/i
" sort lines
nnoremap <leader>so q:i.,.+sort<ESC>Fsi
" set syntax to shell (for dotfiles)
nnoremap <leader>sh :set syn=sh<CR>
" open vimrc in vertical split
nnoremap <leader>vv :vsp ~/.vimrc<CR>
" format current line
nnoremap <leader>ww Vgq
" format this and next line
nnoremap <leader>www Vjgq
" copy next thing to system clipboard
nnoremap <leader>y "+
nnoremap <leader>Y "+Y
" yank entire buffer
nnoremap <leader>yg ggyG
" toggle fold
nnoremap <leader>z za

" }}} leader mappings "

" }}} Mappings "

" (tex) Local Mappings {{{ "
let maplocalleader="-"
autocmd Filetype c inoremap <localleader>s struct pixel

autocmd Filetype tex inoremap <localleader>bt \bowtie
autocmd Filetype tex inoremap <localleader>c \checkmark
autocmd Filetype tex inoremap <localleader>d \delta
autocmd Filetype tex inoremap <localleader>D \Delta
autocmd Filetype tex inoremap <localleader>e \exists
autocmd Filetype tex inoremap <localleader>ep \epsilon
autocmd Filetype tex inoremap <localleader>fa \forall
autocmd Filetype tex inoremap <localleader>g \geq
autocmd Filetype tex inoremap <localleader>i \in
autocmd Filetype tex inoremap <localleader>l \leq
autocmd Filetype tex inoremap <localleader>lr \Leftrightarrow
" autocmd Filetype tex inoremap <localleader>n \neg
autocmd Filetype tex inoremap <localleader>n \neq
autocmd Filetype tex inoremap <localleader>N \mathbb{N}
autocmd Filetype tex inoremap <localleader>q \qquad
autocmd Filetype tex inoremap <localleader>r \rightarrow
autocmd Filetype tex inoremap <localleader>R \Rightarrow
autocmd Filetype tex inoremap <localleader>s \subset
autocmd Filetype tex inoremap <localleader>st such that
autocmd Filetype tex inoremap <localleader>S \Sigma
autocmd Filetype tex inoremap <localleader>t \times
" autocmd Filetype tex inoremap <localleader>T $T$
autocmd Filetype tex inoremap <localleader>T \Theta
" replace bars/underscores in URL
autocmd Filetype tex inoremap <localleader>url :.s/\([-_]\)/\\\1/g<CR>
autocmd Filetype tex inoremap <localleader>v \vee
autocmd Filetype tex inoremap <localleader>w \wedge
autocmd Filetype tex inoremap <localleader>x $x$-axis
autocmd Filetype tex inoremap <localleader>y $y$-axis
autocmd Filetype tex inoremap <localleader>Z \mathbb{Z}
" par3
autocmd Filetype tex inoremap <localleader>wx $w(x)$
autocmd Filetype tex inoremap <localleader>tx $t(x)$

autocmd Filetype md inoremap <localleader>x 0f[lRX

" }}} Local Mappings "
