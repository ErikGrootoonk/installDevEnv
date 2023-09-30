" Plugins

call plug#begin()
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline' " Status bar
Plug 'ryanoasis/vim-devicons' " Developer Icons
call plug#end()

colorscheme PaperColor

" General Configuration

set number
set relativenumber
set mouse=a
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set encoding=UTF-8
nnoremap <F2> :w<CR>
inoremap <F2> <C-o>:w<CR>
nnoremap <F3> :wq<CR>


" VIM Airline configuration

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text'
    \]

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
