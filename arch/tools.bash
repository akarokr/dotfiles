#!/bin/bash

tools=(git zsh curl xclip spotify-stable google-chrome-stable zip unzip docker)

for i in ${tools[@]}; do
  archInstall ${i}
done

