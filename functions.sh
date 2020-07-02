dfind() { grep --color=always -ir $1 | less -R ; }
mcd() { mkdir -p $1 && cd $1 ; }
