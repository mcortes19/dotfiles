#!/usr/bin/env bash

# Install Homebrew (if not installed)
if test ! $(which brew)
then
  # Install the correct homebrew for each OS type
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

brew install composer
brew install eza
brew install git
brew install hub
brew install php
brew install tree
brew install wget
brew install yarn
brew tap beeftornado/rmtree
brew tap drud/ddev && brew install ddev

if test ! $(which zsh)
then
  brew install zsh
  # Set zsh as your default shell
  chsh -s /bin/zsh
fi

# Install Apps.
brew install browserosaurus
brew install docker
brew install firefox
brew install google-chrome
brew install insomnia
brew install iterm2
brew install sequel-pro
brew install visual-studio-code
brew install pantheon-systems/external/terminus
brew install orbstack

# Install fonts.
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
brew install font-fira-code-nerd-font

# Remove outdated versions from the cellar.
brew cleanup
