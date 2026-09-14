function dfind { grep --color=always -ir $1 | sort | less -R ; }
function mcd { mkdir -p $1 && cd $1 ; }
function gitbc { git rev-parse --abbrev-ref HEAD; }
function mnc { cd "/mnt/c/$1" ; }
function mnd { cd "/mnt/d//$1" ; }
function ogrep { grep -irn --include=*.{py,xml,js} $1 $2 ; }
function ofgrep { grep -irnl --include=*.{py,xml,js} $1 $2 ; }
function ext () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}

# Goes up a specified number of directories  (i.e. up 4)
up ()
{
	local d=""
	limit=$1
	for ((i=1 ; i <= limit ; i++))
		do
			d=$d/..
		done
	d=$(echo $d | sed 's/^\///')
	if [ -z "$d" ]; then
		d=..
	fi
	cd $d
}
