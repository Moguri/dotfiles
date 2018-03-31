autocmd! bufwritepost .vimrc source %

set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set spell spelllang=en_us

let mapleader = ' '

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-sensible'
Plugin 'easymotion/vim-easymotion'
call vundle#end()
filetype plugin indent on

"CtrlP
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_max_files = 0

if executable("ag")
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
endif

"EasyMotion
map <Leader> <Plug>(easymotion-prefix)

" Solarized
set background=dark
colorscheme solarized

" Per filetype settings
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 expandtab
