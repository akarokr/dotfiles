#!/bin/bash


sudo pacman -Sy
sudo pacman-mirrors --country all
sudo pacman -Syy

archInstall() {
  yay -Sy --needed --noconfirm
}

source ./arch/util.bash
source ~/.zshrc
