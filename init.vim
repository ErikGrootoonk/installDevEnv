:set number
:set autoindent
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/sainnhe/gruvbox-material'
Plug 'https://github.com/morhetz/gruvbox'
call plug#end()

colorscheme gruvbox

nnoremap <C-n> :NERDTree<cr>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"


