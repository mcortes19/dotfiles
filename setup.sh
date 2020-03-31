#!/usr/bin/env bash

# Install esencial apps and binaries with Brew.
source ./brew.sh

# Create dotfiles symlink.
source ./symlink-dotfiles.sh

# Install Oh-My-ZSH.
source ./oh-my-szh.sh

# Install Global Composer Packages.
source ./composer.sh

# Configure MacOS defaults.
# You only want to run this once during setup. Additional runs may reset changes you make manually.
source ./macos.sh
