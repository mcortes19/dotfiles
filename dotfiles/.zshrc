#!/usr/bin/env bash
#----- This file you can customise and set the various colors of your zsh shell. -----#

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load the shell dotfiles
# * ~/.exports extend export.
# * ~/.zsh-theme set the shell theme.
for file in ~/.{exports,zsh-theme}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  brew
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
  zsh-nvm
  docker
  docker-compose
  iterm2
  pyenv
  copypath
  macos
)

# Load OH-MY-ZSH themes and plugins.
source $ZSH/oh-my-zsh.sh

# iTerm2 integration
source ~/.iterm2/.iterm2_shell_integration.zsh

# zsh-completions.
autoload -U compinit && compinit

# zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=030'

# BEGIN SNIPPET: PYENV
eval "$(pyenv init -)"
# END SNIPPET

# Load the shell dotfiles
# * ~/.aliases extend the system aliases.
# * ~/.functions add custom functions.
# * ~/.path extend $PATH.
# * ~/.extras can be used for other settings you don’t want to commit.
for file in ~/.{aliases,functions,path,extras}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;