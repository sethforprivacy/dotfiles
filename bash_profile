# shortcut aliases
alias ll='ls -lah'

# git aliases
alias g='git'
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '

# GOLANG
export GOPATH="$HOME/go"
export GOBIN="$HOME/work/go"

export PATH="/usr/local/sbin:$PATH"

# get local weather
weather() { curl wttr.in/\"$@\"; }
