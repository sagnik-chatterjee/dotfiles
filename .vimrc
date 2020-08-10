set autoread                                     " reload on external file changes
set backspace=indent,eol,start                   " backspace behaviour
set clipboard=unnamed,unnamedplus                " enable clipboard
set encoding=utf-8                                " enable utf8 support
set hidden                                       " hide buffers, don't close
set mouse=a                                      " enable mouse support
set nowrap                                       " disable wrapping
set number                                       " show line numbers
set term=xterm-256color                          " terminal type
set wildmenu wildmode=longest:full,full          " wildmode settings
"for some python specifc things 
syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set number
filetype indent on
set autoindent


set autoread                                     " reload on external file changes
set backspace=indent,eol,start                   " backspace behaviour
set clipboard=unnamed,unnamedplus                " enable clipboard
set encoding=utf8                                " enable utf8 support
set hidden                                       " hide buffers, don't close
set mouse=a                                      " enable mouse support
set nowrap                                       " disable wrapping
set number                                       " show line numbers
set term=xterm-256color                          " terminal type
set wildmenu wildmode=longest:full,full          " wildmode settings


"set laststatus=2                                 " disable statusline
"set ruler rulerformat=%40(%=%<%F%m\ \
 "                     \›\ %{getfsize(@%)}B\ \
 "                    \›\ %l/%L:%v%)

"set intro message to false 
set shortmess+=at

set hlsearch ignorecase incsearch smartcase      " search options

set autoindent expandtab                         " autoindentation & tabbing
set softtabstop=2          " 1 tab = 2 spaces

set lazyredraw                                   " enable lazyredraw
set nocursorline                                 " disable cursorline
set ttyfast                                      " enable fast terminal connection


set cursorline 
"colors 
colorscheme onedark 

hi Normal guibg=NONE ctermbg=NONE| 
set termguicolors

"let g:sonokai_style='shusia'
"let g:sonokai_enable_italic=1
"let g:sonokai_disable_italic_comment=1 

"colorscheme sonokai 
"using startify 

let g:startify_session_dir ='session'
let g:startify_relative_path= 1
let g:startify_custom_header=[]


"using plugins 
call plug#begin('~/.vim/plugged')
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'vim-python/python-syntax'
Plug 'bfrg/vim-cpp-modern'
Plug 'chrisbra/csv.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'davidhalter/jedi-vim'
Plug 'derekwyatt/vim-scala'
call plug#end()

"THIS IS FOR setting up miramare color profile 
" important!!
"set termguicolors

" the configuration options should be placed before `colorscheme miramare`
"let g:miramare_enable_italic = 1
"let g:miramare_disable_italic_comment = 1

"colorscheme miramare
"powerline theme 
let g:airline_theme='onedark'



"same goes for xcodedark etc..
"using some plugin for checking executbable binaries 
let g:hexmode_patterns= '*.bin ,*.exe ,*.o'

let g:hexmode_xxd_options='-g 1'
"c++ specific things 
let g:cpp_named_requirements_highlight=1
autocmd BufNewFile *.cpp 0r ~/.vim/templates/cpp_template.cpp
autocmd BufNewFile *.cpp :w!
map <F8> :!g++ -g  % && ./a.out <CR>
map <F5> :!g++ -g % <CR>
map <F2> :w <CR>
map <F12> :!gdb ./a.out <CR>

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 0
let g:cpp_experimental_simple_template_highlight = 1



autocmd BufNewFile *.java 0r ~/.vim/templates/java_template.java 

"autocmd BufNewFile *.py 0r ~/.vim/templates/python_template.py 

"python specific things 
let python_highlight_all = 1

"flak8 settings 
let g:flake8_show_quickfix=1  " show (default)

let g:flake8_quickfix_location="topleft"

let g:flake8_max_markers=500  " (default)


" to use colors defined in the colorscheme
highlight link Flake8_Error      Error
highlight link Flake8_Warning    WarningMsg
highlight link Flake8_Complexity WarningMsg
highlight link Flake8_Naming     WarningMsg
highlight link Flake8_PyFlake    WarningMsg

"python check everytime it is python file 
autocmd BufWritePost *.py call flake8#Flake8()
"jedi-vim setting for autocompelte and hide defn 
autocmd FileType python setlocal completeopt-=preview
highlight htmlBold gui=bold guifg=#af0000 ctermfg=124
highlight htmlItalic gui=italic guifg=#ff8700 ctermfg=214

"for jaavcomplete-2 
autocmd FileType java setlocal omnifunc=javacomplete#Complete

"scala settings
let g:scala_scaladoc_indent = 1

