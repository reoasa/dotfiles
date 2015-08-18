" vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized
