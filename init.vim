call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'sickill/vim-monokai'
Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'
Plug 'dense-analysis/ale'
Plug 'kien/ctrlp.vim'

call plug#end()

"basic
inoremap jk <ESC>
syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber 
set nowrap
set smartcase
set noswapfile
set nobackup
set undofile
syntax enable
colorscheme monokai
let mapleader = ","

"emmet 
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"change cw
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-i> <C-w><C-r>

"coc extension
let g:coc_global_extensions = [ 'coc-json', 
    \'coc-git', 
    \'coc-css', 
    \'coc-html', 
    \'coc-tsserver',
    \'coc-clangd', 
    \'coc-go', 
    \'coc-sh',
    \'coc-yank',
    \'coc-prettier',
    \]

"prettier 
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

"coc config
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

"ctrl+p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
