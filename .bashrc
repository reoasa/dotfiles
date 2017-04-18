# path
export PATH="/usr/local/bin:$PATH"

# dir color
eval $(gdircolors ~/dotfiles/colors/solarized/dircolors.ansi-dark)

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# git-prompt
export PS1='\u@\h [\W $(__git_ps1)] \$ '

# alias
alias ls='gls -F --color=auto'
alias ll="ls -lF"

# less
export LESS="-i -X -R -e -P %f %pb\% [line %lt-%lb/%L]"

# function
export HISTCONTROL="ignoredups"
peco-history() {
    local NUM=$(history | wc -l)
    local FIRST=$((-1*(NUM-1)))

    if [ $FIRST -eq 0 ] ; then
        history -d $((HISTCMD-1))
        echo "No history" >&2
        return
    fi  

    local CMD=$(fc -l $FIRST | sort -k 2 -k 1nr | uniq -f 1 | sort -nr | sed -E 's/^[0-9]+[[:blank:]]+//' | peco | head -n 1)

    if [ -n "$CMD" ] ; then
        history -s $CMD

        if type osascript > /dev/null 2>&1 ; then
            (osascript -e 'tell application "System Events" to keystroke (ASCII character 30)' &)
        fi  
    else
        history -d $((HISTCMD-1))
    fi  
}
bind -x '"\C-r":peco-history'
