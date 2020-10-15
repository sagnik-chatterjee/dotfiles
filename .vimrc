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
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'joshdick/onedark.vim'
Plugin 'bfrg/vim-cpp-modern'


call vundle#end()
filetype plugin indent on 

colorscheme onedark 

let g:airline_theme ='onedark'

let g:jedi#use_tabs_not_buffers =1 


let g:rust_clip_command ='xclip -seldction clipboard'
