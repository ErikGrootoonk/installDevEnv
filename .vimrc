" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of
" file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Do not save backup files.
set nobackup
" Add numbers to each line on the left-hand side.
set number

set expandtab

set smarttab

set shiftwidth=2

set tabstop=2

" Show matching words during a search.
set showmatch
" Use highlighting when doing a search.
set hlsearch

" Turn syntax highlighting on.
syntax enable

" Always show the status line
set laststatus=2

" Set the commands to save in history default number is 20.
set history=1000

" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" vim plug
call plug#begin('C:\Users\erik.grootoonk\vimfiles\autoload')
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

call plug#end()

" key mapping
inoremap jj <esc> 
