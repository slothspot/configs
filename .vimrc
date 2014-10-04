set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'sjbach/lusty'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'gregsexton/VimCalc'
Plugin 'Lucius'
Plugin 'jimenezrick/vimerl'
Plugin 'vimoutliner/vimoutliner'
Plugin 'derekwyatt/vim-scala'
Plugin 'ktvoelker/sbt-vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
if has("macunix")
    Plugin 'rizzatti/funcoo.vim'
    Plugin 'rizzatti/dash.vim'
endif

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
set guifont=Anonymous\ Pro\ 12

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
set nowb
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

set autoread
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set noswapfile

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
