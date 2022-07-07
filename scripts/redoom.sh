#!/bin/bash

sudo pacman -R emacs
rm -rf ~/.emacs.d

sudo pacman -S emacs

git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
cd ~/.emacs.d/bin
./doom install

rm -rf ~/.doom.d
git clone https://github.com/ier/.doom.d.git ~/.doom.d

./doom sync

sudo pacman -S ttc-iosevka
