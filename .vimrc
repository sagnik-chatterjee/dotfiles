" Comments in Vimscript start with a `"`.

" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality."

set nocompatible

" Turn on syntax highlighting.

"setting on UTF-8 encoding"
set encoding=utf-8

"Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

"set matching braces when text indicator is over theme"
set showmatch 

"Highlight current line only in current window"
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

"adding relative numbering"
set realtivenumber 

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse=a


filetype plugin indent on  "enable file type detection
set autoindent 


"allowing different colors cheme"


"colorscheme minimalist


filetype on 
filetype indent on 
syntax enable 

autocmd BufNewFile *.cpp :0r ~/.vim/cpp
autocmd BufNewFile *.cpp :w!

map <F8> :!g++ -g % && ./a.out <CR>
map <F5> :!g++ -g % <CR>
map <F2> :w <CR>
map <F12> :!gdb ./a.out <CR>

set number

let python_highlisht_all=1

"some support for markdown"
let g:markdown_fenced_languages = [
    \ 'bash=sh',
    \ 'c',
    \ 'coffee',
    \ 'erb=eruby',
    \ 'javascript',
    \ 'json',
    \ 'perl',
    \ 'python',
    \ 'ruby',
    \ 'yaml',
    \ 'go',
    \]
let g:markdown_syntax_conceal = 0

"some vundle configs "
set nocompatible 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'severin-lemaignan/vim-minimap'
"Plugin 'tmhedberg/SimplyFold'
Plugin 'vim-scripts/indentpython.vim'
" Bundle 'Valloric/YouCompleteMe'
"syntax -checking"
Plugin 'vim-syntastic/syntastic'
"Pluign 'nvie/vim-flake8'

"some colorschemes for writing and terminal mode"
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'JuliaEditorSupport/julia-vim'

call vundle#end()
filetype plugin indent on 

"colorscheme minimalist 
"if has('gui_running')
	"set background=dark
	"colorscheme solarized
"else
	"colorscheme zenburn 
"endif 
"
"toggle button for light to dark conversion"
"using <F3> for it "
call togglebg#map("<F3>")

