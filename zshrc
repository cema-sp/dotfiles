set b off # disable beep
export KEYTIMEOUT=1

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="random"
# ZSH_THEME="robbyrussell"
ZSH_THEME="cema-sp"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# nvm
export NVM_LAZY_LOAD=true
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"

plugins=(docker git gitfast gulp npm osx rbenv rake-fast thor vi-mode web-search zsh-nvm)

# User configuration

PATH="/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/go/bin"
PATH=$PATH:"/usr/local/opt"
PATH=$PATH:"/usr/local/opt/llvm/bin"
PATH=$PATH:"$HOME/.gitbins"
PATH=$PATH:"$HOME/.cabal/bin"
PATH=$PATH:"$HOME/.cargo/bin"
PATH=$PATH:"$HOME/.local/bin" # for haskell binaries
export PATH

# From laptop config script:
export PATH="$HOME/.bin:$PATH"
# Recommended by brew doctor
export PATH="/usr/local/bin:$PATH"
# Use GNU sed
export PATH="$(brew --prefix)/opt/gnu-sed/libexec/gnubin:$PATH"
# Link MySQL 5.7
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

export GOPATH=$HOME/go
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Improve less pager output
export LESS="-R"
[[ -f ~/.less ]] && . ~/.less

# Respect XDG Directories
# see https://wiki.archlinux.org/index.php/XDG_Base_Directory_support
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"

# Have Haskell Stack use XDG Base Directory spec
export STACK_ROOT="$XDG_DATA_HOME/stack"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Readline
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# AWS
export AWS_PROFILE=stack

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id

# iTerm2 shell integration
test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

# Initialize rbenv
eval "$(rbenv init - --no-rehash)"

# Initialize direnv
eval "$(direnv hook zsh)"

# Initialize GutHub hub tool
eval "$(hub alias -s)"

# Initialize fzf fuzzy search
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Set tab titles
precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}
