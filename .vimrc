" Vim-plug Downloader
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Basic Configs
set autoread
set ignorecase
set hlsearch
set incsearch

set magic
set showmatch
set mat=2

set nobackup
set nowb
set noswapfile

set splitbelow
set splitright

set foldmethod=indent
set foldlevel=99

set tabstop=2
set softtabstop=2
set autoindent
set fileformat=unix
set expandtab
set smarttab

set laststatus=2

set backspace=indent,eol,start

set encoding=utf-8

set nu

syntax on
set ttyfast

nnoremap <space> za

" Plugins
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'nvie/vim-flake8'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Plugin configs

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let python_highlight_all=1

let g:airline_theme='term'

" Specific file config

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au FocusGained,BufEnter * checktime
