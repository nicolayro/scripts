#!/usr/bin/env bash

options=`echo "first second third fourth" | tr ' ' '\n'`

selected=`printf "$options" | fzf`

if printf "$options" | grep $selected; then
    echo "Hello, World!"
else 
    echo "Bye, World!"
fi


