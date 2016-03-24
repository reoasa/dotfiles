# dir color
eval $(gdircolors ~/solarized/dircolors-solarized/dircolors.ansi-dark)

# git
source ~/.git-completion.bash

# alias
alias ls='gls --color=auto'
alias ll="ls -l"

# function
peco-select-history() {
    declare l=$(HISTTIMEFORMAT= history | sort -k1,1nr | perl -ne 'BEGIN { my @lines = (); } s/^\s*\d+\s*//; $in=$_; if (!(grep {$in eq $_} @lines)) { push(@lines, $in); print $in; }' | peco --query "$READLINE_LINE")
    READLINE_LINE="$l"
    READLINE_POINT=${#l}
}
bind -x '"\C-r": peco-select-history'
