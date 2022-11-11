#!/bin/bash

# Helps to search in git aliases (https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)
#
# Installation:
#   sudo chmod +x zgt.sh
#
# Usage:
#   zgt.sh -> will prompt to enter command substring
# or
#   zgt.sh merge -> will show found items for 'merge' substring

command=$1
if [ -z "$command" ]
then
  echo -n "Enter git command substring: "
  read command
fi

cat ~/.oh-my-zsh/plugins/git/git.plugin.zsh \
  | grep -P '^alias.+' \
  | grep -i $command \
  | cut -f 2- -d ' ' \
  | sed 's/=/:\ /' \
  | grep -i $command --color

# todo:
# 0. notify if zsh or plugin are not installed
# 1. friendly output in "no results" case
# 2. Empty output -> exit with no result warning text
