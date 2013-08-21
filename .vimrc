set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'L9'
Bundle 'FuzzyFinder'
"Bundle 'millermedeiros/vim-statline'
Bundle 'sjbach/lusty'
Bundle 'xolox/vim-session'
Bundle 'Rip-Rip/clang_complete'
Bundle 'gregsexton/VimCalc'
Bundle 'ervandew/supertab'
Bundle 'Lucius'
Bundle 'jimenezrick/vimerl'
Bundle 'vimoutliner/vimoutliner'
Bundle 'derekwyatt/vim-scala'
Bundle 'plasticboy/vim-markdown'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-powerline'

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
colorscheme solarized

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
let g:clang_use_library = 1
set completeopt=menu,longest

let mapleader=","

nmap <Leader>be :LustyBufferExplorer<CR>
nmap <Leader>bg :LustyBufferGrep<CR>

nmap <Leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

nmap <Leader>a ggVG

autocmd BufReadPost * if line("'\"") <= line("$") | exe "normal! g`\"" | endif
