#!/bin/bash

sudo pacman -R emacs
rm -rf ~/.config/emacs

sudo pacman -S emacs

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install

rm -rf ~/.config/doom
git clone https://github.com/ier/.doom.d.git ~/.config/doom

~/.config/emacs/bin/doom sync && ~/.config/emacs/bin/doom build

sudo pacman -S ripgrep fd cmake ttc-iosevka

;; deprecated: M-x nerd-icons-install-fonts RET
;; M-x all-the-icons-install-fonts RET
