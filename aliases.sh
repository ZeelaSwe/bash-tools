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

git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
git config --global alias.last 'log -1 HEAD'
git config --global alias.unstage 'reset HEAD --'
