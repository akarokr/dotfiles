#!/bin/bash


sudo pacman -Sy
sudo pacman-mirrors --country all
sudo pacman -Syy

archInstall() {
  yay -Sy --needed --noconfirm
}

source ./arch/tools.bash
source ./arch/utils.bash
source ~/.zshrc
