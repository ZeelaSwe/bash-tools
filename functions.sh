dfind() { grep --color=always -ir $1 | sort | less -R ; }
mcd() { mkdir -p $1 && cd $1 ; }
alldirs() { for i in $(ls -d */); do cd ${i} ; echo "====> ${i} applying \"${@:1}\"" ; "${@:1}" ; cd - > /dev/null ; echo ; done ; }
