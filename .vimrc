set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-fugitive'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'millermedeiros/vim-statline'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'sjbach/lusty'
Bundle 'xolox/vim-session'
Bundle 'Rip-Rip/clang_complete'
Bundle 'gregsexton/VimCalc'
Bundle 'ervandew/supertab'
Bundle 'Lucius'
Bundle 'jimenezrick/vimerl'
Bundle 'vimoutliner/vimoutliner'

filetype plugin indent on

set number
set numberwidth=6

set hlsearch
set incsearch
set ignorecase

set laststatus=2
set hidden

syntax enable
set t_Co=256
set background=dark
colorscheme lucius
LuciusDark

set guioptions=acig
set clipboard=unnamed

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set expandtab
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set nobackup

set nowrap

let g:clang_snippets = 1
let g:clang_snippets_engine = 'clang_complete'
let g:clang_auto_select = 1
let g:clang_periodic_quickfix = 1
let g:clang_close_preview = 1
let g:clang_complete_macros = 1
let g:clang_complete_patterns = 1
set completeopt=menu,longest
