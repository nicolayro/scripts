#!/usr/bin/env bash

PROJECT=$(find ~/projects -mindepth 1 -maxdepth 1 | awk -F"/" '{print $NF}' | fzf --border)

cd ~/projects/$PROJECT
