" set x=y {{{ "

set autoindent
set autoread
set background=dark
" set colorcolumn=80
set clipboard+=unnamedplus
set diffopt=filler,context:3
set encoding=utf-8
" set foldmethod=indent
set foldmethod=marker
set hlsearch
set linebreak
set linespace=5
set mouse=a
" set mouse=c
" set noswapfile
set relativenumber
set shiftwidth=4
set tabstop=4
" set t_Co=256
" set timeoutlen=500
set timeoutlen=350
set tw=80
set updatetime=1000

autocmd VimResized * wincmd =
filetype plugin on
filetype indent on
syntax on
au CursorHold,CursorHoldI * checktime

" cursor indicator {{{ "

" set listchars=tab:\|\
" set list
" set cursorcolumn
" set cursorline

" }}} cursor indicator "

" }}} set x=y "

" commands for file types {{{ "

autocmd BufNewFile,BufRead .* set syntax=sh
autocmd FileType *css,htmldjango,html,javascript,markdown,tex,yaml set tabstop=2 shiftwidth=2 expandtab
autocmd BufNewFile,BufRead *.txt set tabstop=2 shiftwidth=2 expandtab
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd Filetype markdown set textwidth=0
" autocmd Filetype html set foldmarker=0

autocmd Filetype markdown map <F8> :LivedownToggle<CR>
autocmd Filetype json nnoremap <leader>j :%!python -m json.tool<CR>
autocmd Filetype json set foldmethod=marker
autocmd FileType sh map <F8> :!clear && shellcheck %<CR>
" autocmd FileType tex map <F8> :VimtexCompile<CR>:VimtexView<CR>
autocmd VimEnter *.tex VimtexCompile
autocmd VimLeave *.tex !tex-clean %:p

" " auto-reload vimrc {{{ "

" augroup myvimrc
	" au!
	" au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
" augroup END

" " }}} auto-reload vimrc "

" }}} commands for file types "

" commands for specific files {{{ "

autocmd BufNewFile,BufRead watson*.fish set tabstop=2 shiftwidth=2 expandtab
autocmd BufRead commit-msg.txt set filetype=gitcommit tw=72
" autocmd BufWritePost key_* !sync-shortcuts
autocmd BufNewFile,BufRead key_* map <F1> :silent !sync-shortcuts<CR>

" map <F1> :silent !scp %:p k@192.168.0.17:/home/k/a1<CR>
" map <F2> :silent !scp -P 2222 e1.html e1_style.css kevin@127.0.0.1:/home/kevin/Downloads/e1<CR>
" map <F6> :make -C ~/Documents/resume cv<CR>

" }}} commands for specific files "

" vim-plug {{{ 
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
	autocmd VimEnter *.tex let g:auto_save = 0

" provides various functionality for writing LaTeX in Vim
Plug 'lervag/vimtex'
	" au BufWritePost *.tex silent call Tex_RunLaTeX()
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
let g:ycm_filetype_blacklist = {
      \ 'tagbar': 1,
      \ 'qf': 1,
      \ 'notes': 1,
      \ 'unite': 1,
      \ 'vimwiki': 1,
      \ 'pandoc': 1,
      \ 'infolog': 1,
      \ 'mail': 1
      \}

" wrote short bits of text that expand into whatever you want
" demo: https://www.youtube.com/watch?v=Zik6u0klD40
Plug 'SirVer/ultisnips'
	" better key bindings for UltiSnipsExpandTrigger
	let g:UltiSnipsExpandTrigger = "<tab>"
	let g:UltiSnipsJumpForwardTrigger = "<tab>"
	let g:UltiSnipsJumpBackwardTrigger = "<C-tab>"
	let g:ultisnips_javascript = {
		 \ 'keyword-spacing': 'always',
		 \ 'semi': 'never',
		 \ 'space-before-function-paren': 'never',
		 \ }

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
	let g:multi_cursor_exit_from_visual_mode=0
	let g:multi_cursor_exit_from_insert_mode=0
Plug 'dag/vim-fish'
Plug 'shime/vim-livedown'
Plug 'tpope/vim-fugitive'
" auto reload file
Plug 'djoshea/vim-autoread'

call plug#end()

" }}} vim-plug "

" colorscheme gotham256
colorscheme wal

" Mappings {{{ "

" function keys {{{ "
map <F3> :wa<CR>
map <F4> :xa<CR>
map <F5> :q!<CR>
map <F6> :qa!<CR>
map <F7> :AutoSaveToggle<CR>
" reload file
nnoremap <F9> :e<CR>
nnoremap <F10> :set paste<CR>"+p:set nopaste<CR>
nnoremap <F11> :set paste<CR>"*p:set nopaste<CR>
" }}} function keys "

map <S-Enter> O<ESC>
" swap text visually
vnoremap <C-P> <Esc>`.``gvP``P
ino <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>

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
" let maplocalleader="-"

" find alias
nnoremap <leader>a /^ <Left>
" replace until end of line
nnoremap <leader>c c$
" delete entire buffer
nnoremap <leader>d d$
" delete entire buffer
nnoremap <leader>dg ggdG
" delete line into system clipboard
nnoremap <leader>D "+dd
" delete entire buffer into system clipboard
nnoremap <leader>DA "+ggdG
" find copied text
nnoremap <leader>f q/p<CR>
" find merge conflicts
nnoremap <leader>fc /[<>=\|]\{7\}<CR>
" reload folds
nnoremap <leader>fmi :set foldmethod=indent<CR> zM
nnoremap <leader>fmm :set foldmethod=marker<CR> zM
" add marker foldmethod modeline
nnoremap <leader>fi :YcmCompleter FixIt<CR>
" find copied text
nnoremap <leader>ft /TODO<CR>
nnoremap <leader>g :YcmCompleter GoTo<CR>
" vimdiff split
nnoremap <leader>gd :Gvdiff HEAD
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
nnoremap <leader>p "*p
nnoremap <leader>pli :PlugInstall<CR>
nnoremap <leader>plc :PlugClean<CR>
nnoremap <leader>plu :PlugUpdate<CR>
" don't break lines
nnoremap <leader>py :set tw=0<CR>
" replace in next x lines
nnoremap <leader>r q:i.,.+s///g<ESC>Fsi
" replace in line
nnoremap <leader>rl q:i.s///g<left><left><left>
" replace in visual selection
vnoremap <leader>r q:is///g<ESC>3ha
" reload vim config
nnoremap <leader>rv :source $MYVIMRC<CR>
" replace in entire file
nnoremap <leader>R q:i%s///g<ESC>2F/i
vnoremap <leader>s :sort<CR>
nnoremap <leader>sc :set spell spelllang=en_us<CR>
" run current file in shell
nnoremap <leader>sh :!%:p
" sort lines until end of file
nnoremap <leader>so q:i.,$sort<CR>
" sort lines
nnoremap <leader>sol q:i.,.+sort<ESC>Fsi
" set syntax to shell (for dotfiles)
nnoremap <leader>sys :set syn=sh<CR>
vnoremap <leader>t :!tac<CR>
" open vimrc in vertical split
nnoremap <leader>vv :vsp ~/.vimrc<CR>
" format current line
nnoremap <leader>ww Vgq
" format this and next line
nnoremap <leader>www Vjgq
" copy next thing to system clipboard
" nnoremap <leader>y "+
" nnoremap <leader>Y "+Y
nnoremap <leader>y y$
" yank entire buffer
nnoremap <leader>yg ggyG
" toggle fold
nnoremap <leader>z za

" }}} leader mappings "

" }}} Mappings "

" Local Mappings {{{ "

" tex {{{ "

let maplocalleader="\\"

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

" }}} tex "

autocmd Filetype fish inoremap <localleader>1 $argv[1]
autocmd Filetype fish inoremap <localleader>2 $argv[2]

autocmd Filetype markdown nnoremap <localleader>x 0f[lrx
" nnoremap <localleader>x 0f[lrx

" }}} Local Mappings "
