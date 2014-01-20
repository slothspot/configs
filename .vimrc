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
Bundle 'sjbach/lusty'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'gregsexton/VimCalc'
Bundle 'Lucius'
Bundle 'jimenezrick/vimerl'
Bundle 'vimoutliner/vimoutliner'
Bundle 'derekwyatt/vim-scala'
Bundle 'plasticboy/vim-markdown'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'Valloric/YouCompleteMe'

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
set background=light
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
set backspace=2

set foldmethod=indent

set nowrap

let mapleader=","

nmap <Leader>be :LustyBufferExplorer<CR>
nmap <Leader>bg :LustyBufferGrep<CR>

nmap <Leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

nmap <Leader>a ggVG

autocmd BufReadPost * if line("'\"") <= line("$") | exe "normal! g`\"" | endif

let g:session_autosave = 'no'

let g:EclimCompletionMethod = 'omnifunc'
