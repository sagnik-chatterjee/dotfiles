syntax on 
set tabstop=2
set shiftwidth=2
set expandtab 
set ai 
set number 
set hlsearch 
set ruler
highlight Comment ctermfg=green
set guifont=FiraCode\ 16
set cursorline 

set shell=/usr/bin/zsh "use to prevent to access the fish shell"

set shortmess+=I 

set mouse+=a
set noerrorbells visualbell t_vb=

set ignorecase 
set hidden 

set laststatus=2

set nocompatible 
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'     "for bracket pair matching "
Plugin 'tomasiser/vim-code-dark'  "some nice standrad colorsheme"
Plugin 'ayu-theme/ayu-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'joshdick/onedark.vim'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'Yggdroot/indentLine'

call vundle#end()
filetype plugin indent on 

set termguicolors
let ayucolor="dark"
colorscheme ayu 

let g:airline_theme ='ayu_dark'

let g:jedi#use_tabs_not_buffers =1 

"Indentline 
let g:indentLine_char = '|'
let g:indentLine_first_char = '|'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
