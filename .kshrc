export PS1='$HOSTNAME (${PWD##*/}) | '

alias c='cat'
alias n='clear'
alias t='cd $(find /var/www/cork -type d \( -name .git -prune \) -o \( -type d -print \) | fzf) && clear'
alias s='cd $(find /var/www/werc -type d \( -name .git -prune \) -o \( -type d -print \) | fzf) && clear'
