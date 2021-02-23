syntax on 
set tabstop=2
set shiftwidth=2
set expandtab 
set ai 
set number 
set hlsearch 
set ruler
highlight Comment ctermfg=green
set guifont=SFMonoMedium\ 16
set cursorline 
set shell=/usr/bin/bash
set encoding=utf-8
set t_Co=256 "for correct tmux 
set mouse+=a
set noerrorbells visualbell t_vb=

set background=dark
set ignorecase 
set hidden 
set shortmess+=I
set laststatus=2

set nocompatible 
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'     "for bracket pair matching "
Plugin 'tomasiser/vim-code-dark'  "some nice standrad colorsheme"
"Plugin 'ayu-theme/ayu-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'joshdick/onedark.vim'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'Yggdroot/indentLine'
Plugin 'rakr/vim-one'
"Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'kaicataldo/material.vim', {' branch': 'main'}
Plugin 'sainnhe/sonokai'
Plugin 'sainnhe/edge'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'vim-syntastic/syntastic'
"Plugin 'nvie/vim-flake8'
Plugin 'Lokaltog/powerline', {'rtp':'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on 


let g:rustfmt_autosave = 1

let g:airline_theme='bubblegum'

let g:jedi#use_tabs_not_buffers =1 

if has('termiguicolors')
  set termiguicolors 
endif 
colorscheme edge 

let g:edge_style='aura'
let g:edge_enable_italic=1
let g:edge_disable_italic_comment=1
let g:edge_cursor='green'




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
"let g:javascript_plugin_ngdoc=1
"let g:javascript_plugin_flow=1

"let python_highlight_all=1
