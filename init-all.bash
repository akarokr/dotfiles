#!/bin/bash


sudo pacman -Sy
sudo pacman-mirrors --country Brazil
sudo pacman -Syy

source ./arch/tools.bash
source ~/.zshrc
