#!/bin/bash

tools=(zsh curl xclip spotify google-chrome zip unzip docker)

for i in ${tools[@]}; do
  yay -Syyu --needed --noconfirm ${i}
done

# source $HOME/dotfiles/arch/utils.bash
