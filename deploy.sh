#!/bin/bash

function deploy {
  from=$1
  to=$2
  dest="$to/$from"
  echo "Deploying '$from' to '$to'..."
  if [ -e "$dest" ]; then
    echo -e "\tFile $dest already exists!"
  elif [ -L "$dest" ]; then
    echo -e "\tLink $dest already exists!"
  else
    ln -s ~/dotfiles/$from $dest && echo -e "\tDone!"
  fi
}

echo -e "\n\t Deploying dotfiles...\n"

deploy .gitconfig ~
deploy .inputrc ~
deploy .zshrc ~
deploy .pryrc ~
deploy gemrc ~
deploy cema-sp.zsh-theme ~/.oh-my-zsh/themes

echo -e "\n\t Done! \n"

