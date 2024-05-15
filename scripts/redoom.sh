#!/bin/bash

sudo pacman -R emacs
rm -rf ~/.emacs.d

sudo pacman -S emacs

git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
cd ~/.emacs.d/bin
./doom install

rm -rf ~/.doom.d
git clone https://github.com/ier/.doom.d.git ~/.doom.d

./doom sync && ./doom build

sudo pacman -S ripgrep
sudo pacman -S ttc-iosevka
sudo pacman -S cmake

;; deprecated: M-x nerd-icons-install-fonts RET
;; M-x all-the-icons-install-fonts RET
