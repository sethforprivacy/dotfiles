set nocompatible
filetype plugin on
set number

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

syntax on
set ruler
set modeline
set history=100
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

au BufWritePre *.c,*.cpp,*.h,*.py,*.rb,*.go,*.sh,*.txt retab
au BufWritePre * call SetSpaces()

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch

" File management
set noswapfile
set nobackup
set nowritebackup

" Allow for undoing changes after exit and reopen
set undofile
set undodir=~/.vim/undo/

fun SetSpaces()
    %s/\s\+$//e
endfun
