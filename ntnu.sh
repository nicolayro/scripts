#!/usr/bin/env bash

CHOICE=$(find ~/ntnu -mindepth 1 -maxdepth 1 | awk -F"/" '{ print $NF }' | fzf --border )

cd ~/ntnu/$CHOICE

