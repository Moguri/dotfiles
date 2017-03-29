autocmd! bufwritepost .vimrc source %

set wrapscan
set number
set autoindent
set smartindent
set cindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set spell spelllang=en_us
set autoread

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
let g:ctrlp_max_files = 0

if executable("ag")
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
endif

"EasyMotion
map <Leader> <Plug>(easymotion-prefix)

" Solarized
set background=dark
colorscheme solarized

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_python_binary_path = 'python'
let g:ycm_autoclose_preview_window_after_completion = 1

" Per filetype settings
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 expandtab
