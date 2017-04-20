""" backspace """
set backspace=indent,eol,start

""" cursor """
inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>^a
noremap <C-e> <Esc>$a
noremap <C-a> <Esc>^a

""" dein.vim """
" Flags
let s:use_dein = 1

" vi compatibility
if !&compatible
  set nocompatible
endif

" Prepare .vim dir
let s:vimdir = $HOME . "/.vim"
if has("vim_starting")
  if ! isdirectory(s:vimdir)
    call system("mkdir " . s:vimdir)
  endif
endif

" dein
let s:dein_enabled  = 0
if s:use_dein && v:version >= 704
  let s:dein_enabled = 1

  " Set dein paths
  let s:dein_dir = s:vimdir . '/dein'
  let s:dein_github = s:dein_dir . '/repos/github.com'
  let s:dein_repo_name = "Shougo/dein.vim"
  let s:dein_repo_dir = s:dein_github . '/' . s:dein_repo_name

  " Check dein has been installed or not.
  if !isdirectory(s:dein_repo_dir)
    echo "dein is not installed, install now "
    let s:dein_repo = "https://github.com/" . s:dein_repo_name
    echo "git clone " . s:dein_repo . " " . s:dein_repo_dir
    call system("git clone " . s:dein_repo . " " . s:dein_repo_dir)
  endif
  let &runtimepath = &runtimepath . "," . s:dein_repo_dir

  " Begin plugin part
  if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    call dein#add('Shougo/dein.vim')

    call dein#add('Shougo/unite.vim', {
          \ 'depends': ['vimproc'],
          \ 'on_cmd': ['Unite'],
          \ 'lazy': 1})

    call dein#add('altercation/vim-colors-solarized')
    call dein#add('ekalinin/Dockerfile.vim')
    call dein#add('aereal/vim-colors-japanesque')
    call dein#add('tomasr/molokai')
    call dein#add('cocopon/iceberg.vim')

  call dein#end()
    call dein#save_state()
  endif

  " Installation check.
  if dein#check_install()
    call dein#install()
  endif

endif

if s:dein_enabled && dein#tap("unite.vim")
  nnoremap [unite] <Nop>
  nmap <Leader>u [unite]
  nnoremap <silent> [unite]b :Unite buffer<CR>
endif

""" color scheme """
syntax enable
set background=dark
autocmd ColorScheme * highlight solarized ctermbg=none
autocmd ColorScheme * highlight japanesque ctermbg=none
autocmd ColorScheme * highlight molokai ctermbg=none
autocmd ColorScheme * highlight iceberg ctermbg=none
colorscheme iceberg
