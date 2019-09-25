#!/bin/zsh

#zsh as default
chsh -s $(which zsh)

#oh my zsh theme
git clone https://github.com/girishrau/oh-my-zsh-customizations.git /tmp/minimal-theme

#virtualenvwrapper
/usr/bin/pip3 install --user virtualenvwrapper

#conky
mkdir $HOME/.conky && \
	cp $HOME/dotfiles/conky/* $HOME/.conky

#i3
mv $HOME/.i3/config $HOME/.i3/config_orig && \
	cp $HOME/dotfiles/i3/config $HOME/.i3/

#screen setup
cp $HOME/dotfiles/arch/screen_startup.bash $HOME

#oh my zsh
if ! [ -d $HOME/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
  cp /tmp/minimal-theme/themes/* $HOME/.oh-my-zsh/themes
fi

#zshrc
mv $HOME/.zshrc $HOME/.zshrc_orig && \
cp $HOME/dotfiles/zsh/zshrc $HOME/.zshrc