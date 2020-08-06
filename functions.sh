#!/bin/bash

function dfind { grep --color=always -ir $1 | sort | less -R ; }
function mcd { mkdir -p $1 && cd $1 ; }

