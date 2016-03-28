rm -rf solarized
rm -rf git-completion
rm -rf bin

mkdir solarized
mkdir git-completion
mkdir bin

cd solarized
curl -L -O https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark

cd ../git-completion
curl -L -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

cd ../bin
curl -L -O https://raw.githubusercontent.com/carsonmcdonald/tmux-wifi-os-x/master/wifi-signal-strength
git clone https://github.com/tmux-plugins/tmux-battery
