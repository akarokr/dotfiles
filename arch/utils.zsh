#!/bin/zsh

#zsh as default
chsh -s $(which zsh)

#oh my zsh theme
git clone https://github.com/girishrau/oh-my-zsh-customizations.git /tmp/minimal-theme

#virtualenvwrapper
#/usr/bin/pip3 install --user virtualenvwrapper

#conky
#mkdir $HOME/.conky 
#cp $HOME/dotfiles/conky/* $HOME/.conky/
#
##i3
#mv $HOME/.i3/config $HOME/.i3/config_orig 
#cp $HOME/dotfiles/i3/config $HOME/.i3/

#install vim pathogen
mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle && \
curl -LSso $HOME/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

#vimrc
cp $HOME/dotfiles/vim/vimrc $HOME/.vimrc

#vimrc theme
mkdir $HOME/.vimrc/colors
cp  $HOME/dotfiles/vim/themes/dotshare.vim $HOME/.vimrc/colors

#screen setup
#cp $HOME/dotfiles/arch/screen_startup.bash $HOME

#oh my zsh
if ! [ -d $HOME/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
  cp /tmp/minimal-theme/themes/* $HOME/.oh-my-zsh/themes
fi

#zshrc
mv $HOME/.zshrc $HOME/.zshrc_orig
cp $HOME/dotfiles/zsh/zshrc $HOME/.zshrc

#Xresourses
#mv $HOME/.Xresources .Xresources_orig 
#cp $HOME/dotfiles/x/Xresources .Xresources

