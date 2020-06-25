#!/bin/bash
echo "Installing Zeela's aliases for productivity."

##To check for a particular  string in a file

aliasFile=~/.bash_aliases  
inputFile=aliases.sh

if [ -f "$File" ]
 then 
    echo " alias file exists "
 else
    echo " alias file does not exist "
 fi

if grep -q "alias gitb=" "$alliasFile"; ##note the space after the string you are searching for
   then
     echo "Hooray!!It's available"
   else
     echo "Oops!!Not available"
fi


echo Start
while read p; do 
    echo "-> " $p
    if grep -q "alias[ ]*gitb=" ~/.bash_aliases; then
      echo  SomeString was found
    fi
done < $inputFile

#cat aliases.sh >> ~/.bash_aliases
