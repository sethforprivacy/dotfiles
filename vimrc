set nocompatible
filetype off

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

"Plugin 'VundleVim/Vundle.vim'

syntax on
set tabstop=4 shiftwidth=4
set expandtab
set autoindent
set smartindent
set backspace=indent,eol,start

noremap Y y$
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
"autoremove trailing whitespace
autocmd BufWritePre * call SetSpaces()

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch

fun SetSpaces()
    retab
    %s/\s\+$//e
endfun
