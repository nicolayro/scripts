#!/usr/bin/env bash

FOLDER=~/projects

# Find names for all the direct children in the folder
PROJECTS=$(find $FOLDER -mindepth 1 -maxdepth 1 -not -path '*/.*' | awk -F "/" '{ print $NF }')

# Display the list of projects and allow the user to choose
CHOICE=$(echo "$PROJECTS" | fzf --border --margin 1,5% --preview "tree -L 2 $FOLDER/{}")

# Change directory to the chosen project
cd $FOLDER/$CHOICE
