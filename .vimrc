" set language to english
set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim


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
set nowritebackup

" Search in subdirectories
set path+=**

" Add numbers to each line on the left-hand side.
set number
" decrease update time
set updatetime=300

" change tabs to spaces
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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" key mapping
inoremap jj <esc>
nmap <F2> :NERDTreeToggle<CR>


" enable backspace
:set backspace=indent,eol,start

" enable mouse
set mouse=a
" set line endings to unix
set ff=unix 
" set encoding to utf-8
set encoding=utf-8
set fileencoding=utf-8

" Coc config

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
"set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" " NOTE: There's always complete item selected by default, you may want to
" enable
" " no select by `"suggest.noselect": true` in your configuration file
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config
" inoremap <silent><expr> <TAB>
       \ coc#pum#visible() ? coc#pum#next(1) :
       \ CheckBackspace() ? "\<Tab>" :
       \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1)
               "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \:"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col ||
  getline('.')[col - 1]
  =~# '\s'
endfunction
