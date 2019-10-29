#!/bin/zsh


sudo pacman -Sy
sudo pacman-mirrors --country Brazil
sudo pacman -Syy

zsh $HOME/dotfiles/arch/tools.bash

zsh $HOME/dotfiles/arch/utils.zsh

source ~/.zshrc
