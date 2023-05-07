set nocompatible        " Disable compatibility with vi which can cause unexpected issues.

set langmenu=en_US      " set language to english

let $LANG = 'en_US'

source $VIMRUNTIME/delmenu.vim

source $VIMRUNTIME/menu.vim

"color default "set theme


filetype on             " Enable type file detection. Vim will be able to try to detect the type of  file in use.

filetype plugin on      " Enable plugins and load plugin for the detected file type.

filetype indent on      " Load an indent file for the detected file type.

set backupdir=~/.vim/backup//  "backup dir to .vim folder
set directory=~/.vim/swap//    "swap dir to .vim folder
set undodir=~/.vim/undo//      "undo dir to .vim folder

set path+=**            " Search in subdirectories

set number

set relativenumber

set updatetime=300      " decrease update time

set expandtab           " change tabs to spaces

set smarttab

set shiftwidth=2

set tabstop=2

set showmatch           " Show matching words during a search.

set hlsearch            " Use highlighting when doing a search.

syntax enable           " Turn syntax highlighting on.

set history=1000        " Set the commands to save in history default number is 20.
set background=dark

" For all text files set 'textwidth' to 78 characters.
autocmd FileType text setlocal textwidth=78


" Map Ctrl-s to saving in both normal and insert mode
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>

set backspace=indent,eol,start " enable backspace

set mouse=a             " enable mouse

set ff=unix             " set line endings to unix
set encoding=utf-8      " set encoding to utf-8
set fileencoding=utf-8

call plug#begin()
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
call plug#end()

colorscheme gruvbox

"nerdtree toggle
nmap <F2> :NERDTreeToggle<CR>
