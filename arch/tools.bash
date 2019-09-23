#!/bin/bash

#zsh as default
chsh -s $(which zsh)

#oh my zsh
if ! [ -d /home/$(whoami)/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if ! [ -d $HOME/.vim/bundle ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall
fi

#Vim/Nvim symlinks
ln -s ~/.vim ~/.config/nvim && ln -s ~/.vimrc ~/.config/nvim/init.vim

#virtualenvwrapper

/usr/bin/pip3 install --user virtualenvwrapper
