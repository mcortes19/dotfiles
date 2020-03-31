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

brew install ahoy
brew install composer
brew tap drud/ddev && brew install ddev
brew install git
brew tap heroku/brew && brew install heroku
brew install php
brew install tree
brew install wget
brew tap beeftornado/rmtree

if test ! $(which zsh)
then
  brew install zsh
  # Set zsh as your default shell
  chsh -s /bin/zsh
fi

# Install taps
brew tap homebrew/cask-fonts
brew tap caskroom/cask

# Install fonts.
brew cask install font-hack-nerd-font

# Install Apps.
brew cask install browserosaurus
brew cask install docker
brew cask install firefox
brew cask install google-chrome
brew cask install iterm2
brew cask install visual-studio-code
brew cask install virtualbox virtualbox-extension-pack
brew cask install vagrant

# Remove outdated versions from the cellar.
brew cleanup
