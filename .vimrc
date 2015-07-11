" vundle
set nocompatible
filetype off
set rtp+=~/.vim/vundle.git
call vundle#rc()

Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized
