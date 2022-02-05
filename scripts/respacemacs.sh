#!/bin/bash

sudo pacman -R emacs
rm -rf ~/.emacs.d

sudo pacman -S emacs

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
emacs
