#!/bin/bash

export GOPATH=$HOME/go

PATH=$PATH:"$HOME/.local/bin:/opt/local/bin"
PATH=$PATH:"$HOME/.gitbins"
export PATH

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Enable Erlang & IEx history
export ERL_AFLAGS="-kernel shell_history enabled"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias vim='nvim'
alias ag='ag --nogroup'
alias rspec='nocorrect rspec'
alias bundle='nocorrect bundle'
alias iex='nocorrect iex'
alias mysql='mysqlsh --sql'
