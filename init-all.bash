#!/bin/bash


sudo pacman -Sy
sudo pacman-mirrors --country Brazil
sudo pacman -Syy

source $HOME/dotfiles/arch/tools.bash
source $HOME/dotfiles/arch/utils.bash
source ~/.zshrc
