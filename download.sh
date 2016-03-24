mkdir solarized
mkdir git-completion

cd solarized
curl -L -O https://github.com/seebi/dircolors-solarized/blob/master/dircolors.ansi-dark
curl -L -O https://github.com/altercation/vim-colors-solarized/blob/master/colors/solarized.vim

cd ../git-completion
curl -L -O https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
