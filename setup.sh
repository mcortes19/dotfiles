#!/usr/bin/env bash
set -euo pipefail

# Install esencial apps and binaries with Brew.
source ./brew.sh

# Install Oh-My-ZSH.
source ./oh-my-zsh.sh

# Create dotfiles symlink.
source ./symlink-dotfiles.sh

# Install Global Composer Packages.
source ./composer.sh

# Configure MacOS defaults.
# You only want to run this once during setup. Additional runs may reset changes you make manually.
source ./macos.sh

# NOTE: Git identity must be set up manually (gitignored for security).
# cp ~/dotfiles/dotfiles/.gitconfig.local.example ~/.gitconfig.local
# Then edit ~/.gitconfig.local with your name, email, and GPG key.

# NOTE: iTerm2 profiles must be imported manually.
# Open iTerm2 → Preferences → Profiles → Import JSON Profiles → select iterm/mcortes19.json
# Colors: Preferences → Profiles → Colors → Color Presets → Import → select iterm/*.itermcolors
