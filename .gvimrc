" My .gvimrc for windows 8.1

set nocompatible
set mouse=a
set number relativenumber
set numberwidth=1
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
set nowrap
set noswapfile

" identacion
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4

set showmode
set showmatch
set laststatus=2
set ruler
set cursorline
set nohlsearch
set scrolloff=10
set colorcolumn=79
set clipboard+=unnamedplus
set autoindent
set backspace=indent,eol,start " backspace over overything in insert mode

let loaded_netrwPlugin = 1
let python_highlight_all = 1
filetype indent plugin on
syntax on

" Cancelar commentario automatico
autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd Filetype c,cpp setlocal comments-=:// comments+=f://

call plug#begin('$HOME/.vim/plugged')

" Syntax lenguage
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-python/python-syntax'

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" Themes
Plug 'morhetz/gruvbox'
" Plug 'shinchu/lightline-gruvbox.vim'
Plug 'rakr/vim-one'
" Plug 'hallzy/lightline-onedark'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

" Front-end
Plug 'mattn/emmet-vim'                  " Ctrl + y + ,
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'             " gc, gcc
Plug 'tpope/vim-surround'               " cs, ds, ysiw, yss, S 
Plug 'AndrewRadev/tagalong.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Plug 'godlygeek/tabular' | Plug 'preservim/vim-markdown'
" Plug 'turbio/bracey.vim'                " :Bracey BraceyStop

" Typing
Plug 'jiangmiao/auto-pairs'

" Writer
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()

colorscheme one
set background=dark

let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen = 1
let g:lightline = {}
let g:lightline.colorscheme = 'one'
let g:tagalong_verbose = 1

let mapleader = " "

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>gy :Goyo<CR>

" Insert config
imap <C-BS> <C-W>

" Terminal config
tnoremap <F1> <C-W>N

" Startup {{{
" filetype indent plugin on
 " Archivo vim colapsado como marcador
augroup ft_vim
    au!
    au FileType vim setlocal foldmethod=marker
augroup END
" }}}

" GUI {{{
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Tamaño de ventana
set lines=35 columns=140

" La ventana dividida esta debajo / a la derecha de la ventana actual
set splitbelow
set splitright

" No mostrar herramientas / barra de menu
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b

" Use estilos de pestaña integreadas en lugar de gui
set guioptions-=e
set nolist

" }}}

" Fontsize {{{
if has("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata\ 12
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h14
    elseif has("gui_win32")
        set guifont=Consolas:h12:cANSI
    endif
endif
" }}}

" Quitar pitido y flash blanco {{{
set noerrorbells visualbell t_vb=
if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
endif
" }}}

