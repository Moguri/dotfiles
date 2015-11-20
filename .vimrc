autocmd! bufwritepost .vimrc source %

set wrapscan
set number
set autoindent
set smartindent
set cindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set spell spelllang=en_us

let mapleader = ' '

" Pathogen
filetype off
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on
syntax on

"CtrlP
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"EasyMotion
map <Leader> <Plug>(easymotion-prefix)

" Solarized
set background=dark
colorscheme solarized

