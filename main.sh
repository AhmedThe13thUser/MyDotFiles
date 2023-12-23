#!/bin/bash

if [ "$UID" -eq 0 ]; then
  sudo rm -rf ~/.config
  sudo rm -rf ~/.zshrc
  sudo rm -rf ~/.gitconfig

  sudo cp ./.config ./.zshrc ./.gitconfig ../
else
  echo "You are just an ordinary user. please run as root (use sudo)" >&2
fi
