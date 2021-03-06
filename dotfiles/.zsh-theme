#!/usr/bin/env bash

#----- TThis file Sets the shell theme. -----#

#-- POWERLEVEL9K SETTINGS --#
# https://github.com/romkatv/powerlevel10k
# powerlevel9k theme settings
ZSH_THEME=powerlevel10k/powerlevel10k

# Left prompt settings
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  status
  background_jobs_joined
  os_icon
  user
  dir_writable
  dir
  vcs
)
# Right prompt settings
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  nvm
)

POWERLEVEL9K_ICON_PADDING=moderate
# Disable Right Prompt.
# POWERLEVEL9K_DISABLE_RPROMPT=true

# Color schema
# https://github.com/Powerlevel9k/powerlevel9k/wiki/Stylizing-Your-Prompt

# User element settings
POWERLEVEL9K_ALWAYS_SHOW_USER=true
POWERLEVEL9K_USER_FOREGROUND=white
POWERLEVEL9K_USER_BACKGROUND=#085f51

# Time element settings
POWERLEVEL9K_TIME_FOREGROUND=cyan
POWERLEVEL9K_TIME_BACKGROUND=grey27

# OS icon elements settings
POWERLEVEL9K_OS_ICON_FOREGROUND=white
POWERLEVEL9K_OS_ICON_BACKGROUND=black

# dir element settings
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3

POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=grey27
POWERLEVEL9K_DIR_HOME_BACKGROUND=grey27
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=grey27
POWERLEVEL9K_DIR_ETC_BACKGROUND=grey27

POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=white
POWERLEVEL9K_DIR_HOME_FOREGROUND=white
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=white
POWERLEVEL9K_DIR_ETC_FOREGROUND=white

POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND=black
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND=red1

# NVM elements settings
POWERLEVEL9K_NVM_FOREGROUND=green
POWERLEVEL9K_NVM_BACKGROUND=grey27


# Status element settings
POWERLEVEL9K_STATUS_VERBOSE=false

# VCS element settings
# POWERLEVEL9K_VCS_SHORTEN_LENGTH=15
# POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH=7
# POWERLEVEL9K_VCS_SHORTEN_STRATEGY="truncate_from_right"

POWERLEVEL9K_MODE=nerdfont-complete

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE=true

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE=true

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION=true

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS=true
