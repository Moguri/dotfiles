autocmd! bufwritepost .vimrc source %

set wrapscan
set number
set autoindent
set smartindent
set cindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set expandtab
set spell spelllang=en_us

" Pathogen
filetype off
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on
syntax on

" Solarized
set background=dark
colorscheme solarized

