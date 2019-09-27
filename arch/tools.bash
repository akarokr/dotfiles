#!/bin/bash

tools=(zsh curl xclip spotify google-chrome zip unzip docker megasync net-tools)

for i in ${tools[@]}; do
  yay -Syu --needed --noconfirm ${i}
done

# source $HOME/dotfiles/arch/utils.bash
