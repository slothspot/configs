set nocompatible
filetype off
set rtp+=~/.vim/
call plug#begin('~/.vim/bundle')

" General
if !has('nvim')
  Plug 'tpope/vim-sensible'
endif
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
"Plug 'scrooloose/syntastic'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/denite.nvim'
Plug 'vimoutliner/vimoutliner'
Plug 'justinmk/vim-sneak'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Programming
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'derekwyatt/vim-scala'
Plug 'Yggdroot/indentLine'
Plug 'zchee/deoplete-jedi'
Plug 'sbdchd/neoformat'
Plug 'autozimu/LanguageClient-neovim', {
  \ 'branch' : 'next',
  \ 'do' : 'bash install.sh',
  \ }
Plug 'Shougo/deoplete.nvim', { 'do' : 'UpdateRemotePlugins' }

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Themes
Plug 'whatyouhide/vim-gotham'
Plug 'NLKNguyen/papercolor-theme'

" OSX specific
if has("macunix")
    Plug 'rizzatti/funcoo.vim'
    Plug 'rizzatti/dash.vim'
endif

call plug#end()

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
nmap <Leader>g :Denite grep "" !<CR>
call denite#custom#map(
      \ 'insert',
      \ '<C-j>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<C-k>',
      \ '<denite:move_to_previous_line>',
      \ 'noremap'
      \)
call denite#custom#source('file_rec', 'matchers', ['matcher_ignore_globs'])
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
      \ [ '.git/', 'target/', '.idea/', '.DS_Store'])
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

set completeopt+=noselect

let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.scala = [ '[^. *\t]\.\w*', '[:\[,] ?\w*', '^import .*']
let g:deoplete#omni#input_patterns.ocaml = '[^. *\t]\.\w*|\s\w*|#'
let g:deoplete#sources#jedi#python_path = '/usr/local/bin/python3.6'

let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'
imap <expr> <TAB> pumvisible() ? '<C-n>' : '<TAB>'

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
endif

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

let g:opamshare = substitute(system('opam config var share'), '\n$', '', '''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
execute "set rtp+=" . g:opamshare . "/ocp-indent/vim"

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
