autocmd! bufwritepost .vimrc source %

set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set spell spelllang=en_us

let mapleader = ' '

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'kien/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
call plug#end()

"CtrlP
let g:ctrlp_working_path_mode = 'r'
if executable("ag")
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
endif

"EasyMotion
map <Leader> <Plug>(easymotion-prefix)

" Solarized
set background=dark
colorscheme solarized

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000


" Per filetype settings
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 expandtab
