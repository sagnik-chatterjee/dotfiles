set nocompatible 
filetype plugin on 
syntax on 
set number 

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }


" Initialize plugin system
"vim color theme 

"miramare color theme  
Plug 'sainnhe/gruvbox-material'
Plug 'morhetz/gruvbox'
" Unmanaged plugin (manually installed and updated)

"airline theme 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


"syntax checking 
Plug 'vim-syntastic/syntastic'

"color themes"
"Python 
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'vim-python/python-syntax'

"Clojure
Plug 'guns/vim-clojure-highlight'

"C 
Plug 'octol/vim-cpp-enhanced-highlight'

"Java 

"jsx
Plug 'mxw/vim-jsx'

"js
Plug 'pangloss/vim-javascript'
"autopair
Plug 'jiangmiao/auto-pairs'

"git integration 
Plug 'tpope/vim-fugitive'


"nerdtree
Plug 'scrooloose/nerdtree'


"tex addon for vim 
Plug 'lervag/vimtex'

"ELixir setup
Plug 'elixir-editors/vim-elixir'

call plug#end()

"bracketpair


set encoding=utf-8

set termguicolors

colorscheme gruvbox
set bg=dark
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='gruvbox'


"autopep8 formatting 
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let g:python_highlight_all = 1


"c/c++ settings
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1

"clojure settings 
" Evaluate Clojure buffers on load
autocmd BufRead *.clj try | silent! Require | catch /^Fireplace/ | endtry


