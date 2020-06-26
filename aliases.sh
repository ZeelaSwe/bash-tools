# Git specific aliases
alias gitb='git branch'
alias gitl='git log'
alias gitlg='git lg'
alias gitlt='git log --all --decorate --oneline --graph'
alias gits='git status'
alias giff='git diff'
alias cg='cd `git rev-parse --show-toplevel`'

# Grep related aliases and functions
alias grep='grep --color=auto'
alias clgrep='grep --color=always'
dfind() { grep --color=always -ir $1 | less -R ; }

# Misc useful aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias lt='ls --human-readable --size -1 -S --classify'
alias gh='history|grep'
