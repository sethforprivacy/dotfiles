set nocompatible
filetype off

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

"Plugin 'VundleVim/Vundle.vim'

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

"autoremove trailing whitespace
autocmd BufWritePre * %s/\s+$//e
