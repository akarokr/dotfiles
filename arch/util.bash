#!/bin/bash

tools=(git zsh curl xclip spotify-stable google-chrome-stable zip unzip)

for i in ${tools[@]}; do
  archInstall ${i}
done

source ~/.zshrc
source ./tools/defaults.bash
