set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" General
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Shougo/unite.vim'
Plugin 'vimoutliner/vimoutliner'

" Programming
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-scala'
Plugin 'ensime/ensime-vim'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Themes
Plugin 'whatyouhide/vim-gotham'
Plugin 'NLKNguyen/papercolor-theme'

" OSX specific
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
colorscheme PaperColor
set guifont=Iosevka\ Regular\ 14

set guioptions=acig
set clipboard=unnamed

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
nmap <F9> :NERDTreeToggle<CR>

set expandtab
set autoindent
set smartindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set nobackup
set nowb
set backspace=2

set foldmethod=indent

set nowrap

let mapleader=","

nmap <Leader>be :Unite -quick-match buffer<CR>
if has('macunix')
    nmap <Leader>d :Dash<CR>
endif

nmap <Leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

nmap <Leader>a ggVG

autocmd BufReadPost * if line("'\"") <= line("$") | exe "normal! g`\"" | endif

let g:session_autosave = 'no'

set autoread
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set noswapfile

let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='papercolor'

let g:unite_enable_start_insert = 1
let g:unite_split_rule = "botright"
let g:unite_force_overwrite_statusline = 0
let g:unite_winheight = 10

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    set termguicolors
endif
