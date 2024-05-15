#!/bin/bash

sudo pacman -R emacs
rm -rf ~/.emacs.d

sudo pacman -S emacs

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install

rm -rf ~/.doom.d
git clone https://github.com/ier/.doom.d.git ~/.doom.d

./doom sync && ./doom build

sudo pacman -S ripgrep fd cmake
sudo pacman -S ttc-iosevka

;; deprecated: M-x nerd-icons-install-fonts RET
;; M-x all-the-icons-install-fonts RET
