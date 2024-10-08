set nocompatible        " Disable compatibility with vi which can cause unexpected issues.

" map leader key to space
let mapleader = " "
set timeoutlen=500 


filetype on             " Enable type file detection. Vim will be able to try to detect the type of  file in use.

filetype plugin on      " Enable plugins and load plugin for the detected file type.

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

filetype indent on      " Load an indent file for the detected file type.


set path+=**            " Search in subdirectories

set wildmenu            " Display all matching files when we tab complete

set number

set relativenumber

set updatetime=300      " decrease update time

set expandtab           " change tabs to spaces

"set smarttab

set shiftwidth=2

set tabstop=2

"set showmatch           " Show matching words during a search.

"set hlsearch            " Use highlighting when doing a search.

syntax enable           " Turn syntax highlighting on.

set history=1000        " Set the commands to save in history default number is 20.

call plug#begin() 
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'mzlogin/vim-markdown-toc'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
call plug#end()

let g:gruvbox_contrast_dark = 'hard'

" Coc config "

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate
" " NOTE: There's always complete item selected by default, you may want to
" enable
"no select by ` "suggest.noselect": true` in your configuration file
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config
inoremap <silent><expr> <TAB>
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

" set tab and s-tab to navigate the completion list 
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"


" set colorscheme
colorscheme gruvbox

set background=dark

nmap <F2> :NERDTreeToggle<CR> 

" Map Ctrl-s to saving in both normal and insert mode
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>

" Map leader to ctrl -v because of WSL default mappings
nnoremap <leader>v <C-v>

set backspace=indent,eol,start " enable backspace

set mouse=a             " enable mouse

set ff=unix             " set line endings to unix
set encoding=utf-8      " set encoding to utf-8
set fileencoding=utf-8

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


if system('uname -r') =~ "microsoft"
  augroup Yank
  autocmd!
  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
  augroup END
endif
