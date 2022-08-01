#!/usr/bin/env bash

# Folder to search in
FOLDER=~/ntnu

# Find names for all the direct children in the folder
PROJECTS=$(find $FOLDER -mindepth 1 -maxdepth 1 | awk -F "/" '{ print $NF }')

# Display the list of projects and allow the user to choose
CHOICE=$(echo "$PROJECTS" | fzf --border --margin 1,5%)

# Change directory to the chosen project
cd $FOLDER/$CHOICE
