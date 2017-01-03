#!/bin/bash

export GOPATH=$HOME/go

PATH=$PATH:"/Library/PostgreSQL/9.5/bin"
PATH=$PATH:"$HOME/.local/bin:/opt/local/bin"
export PATH

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias vim='nvim'
alias ag='ag --nogroup'

