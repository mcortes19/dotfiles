#!/usr/bin/env bash

echo "Creating symlinks for dotfiles to $HOME"

for f in dotfiles/\.[^.]*; do
  FILE="$(basename $f)"
  ln -sf "$PWD/dotfiles/$FILE" "$HOME"
done

echo "Linked dotfiles. Please restart your shell. "
