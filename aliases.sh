alias gitb='git branch'
alias gitl='git log'
alias gitlg='git lg'
alias gitlt='git log --all --decorate --oneline --graph'
alias gits='git status'
alias giff='git diff'
alias grep='grep --color=auto'
alias clgrep='grep --color=always'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
dfind() {
    grep --color=always -ir $1 | less -R
}
