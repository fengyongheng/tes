set nocompatible
filetype off
filetype indent on
filetype plugin on
filetype plugin indent on
set number
set backspace=2
set tabstop=4
set shiftwidth=4
set ignorecase
set hlsearch
map s :w<CR>
map q :q<CR>
set cursorline
set wrap
set showcmd 
set wildmenu
map R :source $MYVIMRC<CR>
exec "nohlsearch"
noremap  <LEADER><CR> :nohlsearch<CR>
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'w0rp/ale'
"Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'preservim/tagbar', { 'on': 'TagbarOpenAutoClose' }
"PlugClean[!]
call plug#end()
color snazzy

nnoremap tt :NERDTreeToggle<CR>
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>
"move cursor
map ml <C-w>l
map mh <C-w>k
map mk <C-w>h
map mj <C-w>j
map tn :tabe<CR>
map th :-tabnext<CR>
map tj :+tabnext<CR>
map su <C-w>t<C-w>H
map si <C-w>t<C-w>K

set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set laststatus=2
set autochdir
set scrolloff=5
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
let g:airline#extensions#tagbar#enabled = 1
nmap ff :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 60




