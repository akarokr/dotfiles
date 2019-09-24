#!/bin/bash

#zsh as default
chsh -s $(which zsh)

#oh my zsh theme
git clone https://github.com/girishrau/oh-my-zsh-customizations.git /tmp/minimal-theme

#virtualenvwrapper
/usr/bin/pip3 install --user virtualenvwrapper

#zshrc
cp -u ../zsh/zshrc $HOME/.zshrc

#conky
mkdir $HOME/.conky && cp ../conky/* $HOME/.conky

#i3
mv $HOME/.i3/config $HOME/.i3/config_orig
cp ../i3/config $HOME/.i3/

#oh my zsh
if ! [ -d $HOME/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
  cp /tmp/minimal-theme/themes/* $HOME/.oh-my-zsh/themes
fi