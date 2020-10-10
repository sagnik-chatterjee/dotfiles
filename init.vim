filetype on 
filetype indent on 
syntax enable 

autocmd BufNewFile *.cpp :0r ~/.config/nvim/templates/templ1.cpp 
autocmd BufNewFile *.cpp :w!
map <F8> :!g++ -g % && ./a.out <CR>
map <F5> :!g++ -g % <CR>
map <F2> :w <CR>
map <F12> :!gdb ./%:r <CR>

set number 
set laststatus=2

set backspace=indent,eol,start

set ignorecase
set smartcase 

set mouse+=a

set shortmess+=I

set nocompatible 
set autoindent 
set smartindent 
set cindent "for strict c style indentation "
set encoding=utf-8


"set the runtime path to incclude Vundle and initialize 
set rtp+=~/.config/nvim/bundle/Vundle.vim 

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'

"CColor themes 
"Plugin 'liuchengxu/space-vim-theme'
"Plugin 'kaicataldo/material.vim'
"Plugin 'joshdick/onedark.vim'
"Plugin 'ayu-theme/ayu-vim'
Plugin 'tomasiser/vim-code-dark'

"language support for other langaugaes 
Plugin 'faith/vim-go'

call vundle#end()
filetype plugin indent on 

if (has("termguiccolors"))
	set termguicolors
endif 
"set background=dark 

"let g:material_theme_italics=1
"let g:material_theme_style='darker-community'
"let ayucolor="dark"

colorscheme codedark
"colorscheme onedark
"let g:airline_theme='onedark'
let g:airline_theme='codedark'

"highlight current line in active window 

augroup CursorLineOnlyInActiveWindow
	autocmd!
	autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline 
	autocmd WinLeave * setlocal nocursorline 
augroup END 

