#!/bin/bash
echo "Installing Zeela's aliases for productivity."

##To check for a particular  string in a file

File=~/.bash_aliases  

if grep -q "alias gitb=" "$File"; ##note the space after the string you are searching for
   then
     echo "Hooray!!It's available"
   else
     echo "Oops!!Not available"
fi

if grep -q "alias gitb=" ~/.bash_aliases; then
  echo # SomeString was found
fi

#cat aliases.sh >> ~/.bash_aliases
