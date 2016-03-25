#!/bin/sh
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.inputrc ~/.inputrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/git-completion/git-completion.bash ~/.git-completion.bash

cp bin/wifi-signal-strength /usr/local/bin/
chmod +x /usr/local/bin/wifi-signal-strength
