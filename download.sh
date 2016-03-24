mkdir solarized
mkdir git-completion

cd solarized
curl -L -O https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark
curl -L -O https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim

cd ../git-completion
curl -L -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
