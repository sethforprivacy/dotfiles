alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias sagi='sudo apt-get install'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

export EDITOR=vim

weather() { curl wttr.in/"$@"; }
