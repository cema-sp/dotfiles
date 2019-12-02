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

5. If hooks doesn't work, run them manualy
6. Install neovim packages:

  ~~~
  pip2 install --upgrade pip
  pip3 install --upgrade pip
  pip2 install --upgrade neovim
  pip3 install --upgrade neovim
  gem install neovim
  ~~~

7. Download [vim-plug] (if not installed by [laptop script]):

  * For **vim**

    ~~~
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ~~~

  * For **neovim**

    ~~~
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ~~~

8. Install vim plugins: `vim +PlugInstall`
9. Check Neovim health: `vim +CheckHealth`
10. ~Make Sublime plugins work:~

  1. Get your GitHub OAuth token [here](https://github.com/settings/tokens)
    and add following line to *~/Library/Application Support/Sublime Text 3/Packages/User/MarkdownPreview.sublime-settings*:

    `"github_oauth_token": "<YOU TOKEN>"`

[laptop script]: https://github.com/cema-sp/laptop "laptop script"
[rcm]: https://github.com/thoughtbot/rcm "RCM"
[vim-plug]: https://github.com/junegunn/vim-plug "vim-plug"
