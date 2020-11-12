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
set shell=/usr/bin/zsh


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
Plugin 'rakr/vim-one'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'kaicataldo/material.vim', {' branch': 'main'}

call vundle#end()
filetype plugin indent on 

set termguicolors
"let ayucolor="dark"
"colorscheme ayu 
"set background=dark
let g:one_allow_italics=1
colorscheme one

"set background=dark
"colorscheme palenight 

"let g:material_theme_style='darker'
"let g:material_terminal_italics=1
"colorscheme material

"automatically running rustfmt 
let g:rustfmt_autosave = 1


"let g:airline_theme ='ayu_dark'
let g:airline_theme='one'
"let g:airline_theme="palenight"

let g:jedi#use_tabs_not_buffers =1 

"Indentline 
"let g:indentLine_char = '|'
"let g:indentLine_first_char = '|'
"let g:indentLine_showFirstIndentLevel = 1
"let g:indentLine_setColors = 0
"Some cursor magic 
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[6 q"

"Set javascript thingey's
let g:javascript_plugin_ngdoc=1
let g:javascript_plugin_flow=1

