#!/bin/bash

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias ag='ag --nogroup'
alias diskspace='df -P -kHl'
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias vim='nvim'

# Git
alias gcl='git checkout . && git clean -f'

# File Download
if (( $+commands[curl] )); then
  alias get='curl --continue-at - --location --progress-bar --remote-name --remote-time'
elif (( $+commands[wget] )); then
  alias get='wget --continue --progress=bar --timestamping'
fi

