function dfind { grep --color=always -ir $1 | sort | less -R ; }
function mcd { mkdir -p $1 && cd $1 ; }
function gitbc { git rev-parse --abbrev-ref HEAD; }
function mnc { cd "/mnt/c/$1" ; }
function mnd { cd "/mnt/d//$1" ; }
function ogrep { grep -irn --include=*.{py,xml,js} $1 $2 ; }
function ofgrep { grep -irnl --include=*.{py,xml,sj} $1 $2 ; }
