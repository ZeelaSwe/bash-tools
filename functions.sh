dfind() { grep --color=always -ir $1 | sort | less -R ; }
mcd() { mkdir -p $1 && cd $1 ; }
