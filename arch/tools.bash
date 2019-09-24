#!/bin/bash

tools=(git zsh curl xclip spotify-stable google-chrome-stable zip unzip docker)

for i in ${tools[@]}; do
  yay -Syyu --needed --noconfirm ${i}
done

source utils.bash
source ~/.zshrc