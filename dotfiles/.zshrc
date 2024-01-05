#!/usr/bin/env bash
#----- This file you can customise and set the various colors of your zsh shell. -----#

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load dotfiles config.
# * ~/.env-variables: custom environment variables.
# * ~/.functions add custom functions.
# * ~/.p10k.zsh theme configuration.
for file in ~/.{env-variables,functions,p10k.zsh}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#  Plugin settings.
zstyle ':omz:plugins:nvm' autoload yes
zstyle ':omz:plugins:nvm' lazy yes
zstyle ':omz:plugins:nvm' silent-autoload yes
zstyle :omz:plugins:iterm2 shell-integration yes

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  brew
  git
  zsh-autosuggestions
  zsh-better-npm-completion
  zsh-syntax-highlighting
  zsh-completions
  nvm
  iterm2
  copypath
)

# Load OH-MY-ZSH themes and plugins.
[[ -f "$ZSH/"'oh-my-zsh.sh' ]] && source $ZSH/oh-my-zsh.sh

# Load iTerm2 integration
# [[ -f "$HOME/"'.iterm2_shell_integration.zsh' ]] && source ~/.iterm2_shell_integration.zsh

# Load Platform.sh CLI configuration
[[ -f "$HOME/"'.platformsh/shell-config.rc' ]] && . "$HOME/"'.platformsh/shell-config.rc'

# Load aliases dotfile
[[ -f "$HOME/"'.aliases' ]] && source "$HOME/"'.aliases'

# Enable zsh-completions.
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit
  compinit
fi
