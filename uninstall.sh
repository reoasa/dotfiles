#!/bin/sh
unlink ~/.bashrc
unlink ~/.bash_profile
unlink ~/.inputrc
unlink ~/.tmux.conf
unlink ~/.vimrc
unlink ~/.git-completion.bash

rm -rf ~/bin
rm -rf ~/colors
rm -rf ~/git-completion
rm -f /usr/local/bin/wifi-signal-strength
