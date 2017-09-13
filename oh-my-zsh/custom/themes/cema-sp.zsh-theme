# vim: set syntax=sh:

local ret_status="%(?:%{$fg[green]%}➜ :%{$fg[red]%}➜ )"
local timestamp="%{$fg[red]%}[%*]"
NEWLINE=$'\n'
PROMPT=' ${timestamp} %{$fg[cyan]%}%c $(git_prompt_info) $(vi_mode_prompt_info)$NEWLINE${ret_status}%{$reset_color%} '
MODE_INDICATOR="%{$fg[grey]%}[N]%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

