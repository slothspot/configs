set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" General
Plugin 'gmarik/vundle'
if !has('nvim')
  Plugin 'tpope/vim-sensible'
endif
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Shougo/denite.nvim'
Plugin 'vimoutliner/vimoutliner'
Plugin 'justinmk/vim-sneak'

" Programming
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'derekwyatt/vim-scala'
Plugin 'ensime/ensime-vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'Yggdroot/indentLine'
Plugin 'zchee/deoplete-jedi'
Plugin 'carlitux/deoplete-ternjs'

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
colorscheme PaperColor
set background=light
set guifont=Iosevka\ Regular\ 14

set guioptions=acig
set clipboard=unnamed

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeHighlightCursorLine=1
let NERDTreeShowHidden=1
nmap <F9> :NERDTreeToggle<CR>
nmap <F10> :NERDTreeFind<CR>

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

nmap <Leader>o :Denite buffer file_rec<CR>
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

let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.scala = [ '[^. *\t]\.\w*', '[:\[,] ?\w*', '^import .*']
let g:deoplete#omni#input_patterns.ocaml = '[.\w]+'
let g:deoplete#sources#jedi#python_path = '/usr/local/bin/python3.6'
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'
imap <expr> <TAB> pumvisible() ? '<C-n>' : '<TAB>'

let g:opamshare = substitute(system('opam config var share'), '\n$', '', '''')
execute "set rtp+=" . g:opamshare . "/merlin/vim/"
execute "autocmd FileType ocaml source " . g:opamshare . "/ocp-indent/vim/indent/ocaml.vim"

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
endif
