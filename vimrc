set nocompatible
filetype off
set number

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set backspace=indent,eol,start
set encoding=utf-8

noremap Y y$
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅

au BufWritePre *.py,*.rb,*.go,*.sh,*.txt retab
au BufWritePre * call SetSpaces()
au BufNewFile,BufRead *.py
    \ set textwidth=79
    \ set fileformat=linux

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch

" File management
set noswapfile
set nobackup
set nowritebackup
set cursorline

" Allow for undoing changes after exit and reopen
set undofile
set undodir=~/.vim/undo/

fun SetSpaces()
    %s/\s\+$//e
endfun
