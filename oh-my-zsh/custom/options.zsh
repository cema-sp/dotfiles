#!/bin/bash

# See all options  in docs: http://zsh.sourceforge.net/Doc/Release/Options.html
# To check set options: `setopt`; unset options: `unsetopt`

unsetopt auto_cd
unsetopt share_history
setopt hist_ignore_all_dups
setopt hist_find_no_dups
