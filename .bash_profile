if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
