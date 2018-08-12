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
Plug 'python-mode/python-mode'
Plug 'davidhalter/jedi-vim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'w0rp/ale'
Plug 'ajh17/VimCompletesMe'
call plug#end()

"Persistent UndoA
set undodir=~/.vim/undo
set undofile

"CtrlP
let g:ctrlp_working_path_mode = 'r'
if executable("ag")
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
endif

" python-mode
let g:pymode_folding = 0
let g:pymode_lint = 0
let g:pymode_rope = 0
let g:pymode_run = 0
let g:pymode_breakpoint = 0
let g:pymode_options_colorcolumn = 0

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
