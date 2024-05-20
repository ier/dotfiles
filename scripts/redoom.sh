#!/bin/bash

sudo pacman -R emacs
rm -rf ~/.config/emacs

sudo pacman -S emacs ripgrep fd cmake ttc-iosevka

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install

rm -rf ~/.config/doom
git clone https://github.com/ier/.doom.d.git ~/.config/doom

~/.config/emacs/bin/doom sync && ~/.config/emacs/bin/doom build

# M-x nerd-icons-install-fonts RET
