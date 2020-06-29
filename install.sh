#!/bin/bash
echo "Installing Zeela's aliases for productivity."

##To check for a particular  string in a file

aliasFile=~/.bash_aliases
inputFile=aliases.sh

if [ ! -f "$aliasFile" ]
 then 
    if [! -z $verbose ]
     then
      echo " Creating $aliasFile "
    fi
    touch $aliasFile
fi

echo "Debug=$debug"
echo "Verbose=$verbose"

if [ ! -z $debug ]
 then
  echo $aliasFile " - Content"
  cat $aliasFile 
fi

echo "Updating aliases"

grep "alias .*=" $inputFile | while read line ;
do
  search=$( echo ${line//./\\.} | cut -d=  -f1 )
  if grep -q  "$search=" "$aliasFile"; 
    then
      if [ ! -z $verbose ]
      then
        echo "Replacing $search with $line"
      fi
      sed -i "s%^$search=.*%$line%" $aliasFile
    else
      if [ ! -z $verbose ]
      then
        echo "Adding: $line"
      fi
      echo "$line" >> $aliasFile
  fi
done

echo "Updating functions"
inputFile=functions.sh

cat $inputFile | while read line ;
do
  tmp=$( echo ${line//(/\\(} )
  search=$( echo ${tmp//)/\\)} | cut -d"{" -f1 )
  search=$( echo $line | cut -d"{" -f1 )
  echo "Search: $search"
  if grep -q  "$search" "$aliasFile"; 
    then
      if [ ! -z $verbose ]
      then
        echo "Replacing $search with $line"
      fi
      sed -i "s%$search.*%$line%" $aliasFile
    else
      if [ ! -z $verbose ]
      then
        echo "Adding: $line"
      fi
      echo "$line" >> $aliasFile
  fi
done

if [ ! -z $debug ]
 then
  echo "After"
  cat $aliasFile
fi 

echo "Updating global git-aliases"
cat git-aliases.sh | bash

echo "Sourcing $aliasFile"
. $aliasFile


