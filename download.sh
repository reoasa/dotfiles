rm -rf colors
rm -rf bin

mkdir -p colors/solarized
mkdir colors/japanesque
mkdir bin

cd colors/solarized
curl -L -O https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark

cd ../japanesque
curl -L -O https://raw.githubusercontent.com/aereal/dotfiles/master/colors/Japanesque/Japanesque.itermcolors

cd ../bin
curl -L -O https://raw.githubusercontent.com/carsonmcdonald/tmux-wifi-os-x/master/wifi-signal-strength
git clone https://github.com/tmux-plugins/tmux-battery
