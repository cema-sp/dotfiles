# Cema-sp dotfiles
## Installation

1. Install *git*, *zsh*, etc. Use [laptop script] or see what it installs.
2. Install [rcm] if it is not installed with [laptop script]
3. Clone this repo to *~/.dotfiles*:

  `git clone git@github.com:cema-sp/dotfiles "$HOME/.dotfiles"`

4. Install with [rcm]:

  ~~~
  RCRC=$HOME/.dotfiles/rcrc rcup -v`
  ~~~

5. Clone [Vundle] and install vim plugins:

  ~~~
  git clone "https://github.com/VundleVim/Vundle.vim.git" "$HOME/.vim/bundle/Vundle.vim"
  vim +VundleInstall
  ~~~

6. Make vim plugins work:

  1. YouCompleteMe:

    ~~~
    cd "$HOME/.vim/bundle/YouCompleteMe/"
    ./install.py --clang-completer --gocode-completer --tern-completer
    pip install --upgrade pip
    pip install --upgrade neovim
    gem install neovim
    ~~~

7. Check Neovim health: `vim +CheckHealth`

8. Make Sublime plugins work:

  1. Get your GitHub OAuth token [here](https://github.com/settings/tokens)
    and add following line to *~/Library/Application Support/Sublime Text 3/Packages/User/MarkdownPreview.sublime-settings*:

    `"github_oauth_token": "<YOU TOKEN>"`

[laptop script]: https://github.com/cema-sp/laptop "laptop script"
[rcm]: https://github.com/thoughtbot/rcm "RCM"
[Vundle]: https://github.com/VundleVim/Vundle.vim "Vundle"

