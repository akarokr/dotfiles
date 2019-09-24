#!/bin/bash


sudo pacman -Sy
sudo pacman-mirrors --country Brazil
sudo pacman -Syy

archInstall() {
  yay -Sy --needed --noconfirm
}

source ./arch/tools.bash
source ~/.zshrc
