set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" set python path for nvim
" let g:python_host_prog='/usr/bin/python'

" set shell=/bin/bash

" Clipboard
set clipboard=unnamedplus
" To copy with cmd+c in vim:
" set clipboard=unnamed,autoselect
set pastetoggle=<F2>

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Solarized colorscheme
" Plugin 'altercation/vim-colors-solarized'

" Monokai colorscheme
Plugin 'crusoexia/vim-monokai'

" Nerd Tree
Plugin 'scrooloose/nerdtree'

" Autocomplete & completion
Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --gocode-completer --tern-completer' }
Plugin 'ervandew/supertab'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Status bar
Plugin 'bling/vim-airline'

" Fuzzy files search
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'

" Comments
Plugin 'scrooloose/nerdcommenter'

" Syntax checker
Plugin 'scrooloose/syntastic'

" Git
Plugin 'tpope/vim-fugitive'

" Multiple cursors
Plugin 'terryma/vim-multiple-cursors'

" Surround
Plugin 'tpope/vim-surround'

" Motions
Plugin 'easymotion/vim-easymotion'

" Markdown
Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'

" Execution
Plugin 'Shougo/vimproc.vim', { 'do': 'make' }

" Whitespaces
Plugin 'ntpeters/vim-better-whitespace'

" Aligning
Plugin 'godlygeek/tabular'

" JavaScript
Plugin 'ternjs/tern_for_vim', { 'do': 'npm install' }

" Haskell
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'

" Clojure
" See: http://blog.venanti.us/clojure-vim/
Plugin 'guns/vim-clojure-static' " Runtime files
Plugin 'tpope/vim-fireplace' " REPL
Plugin 'kien/rainbow_parentheses.vim' " Awesome parantheses
Plugin 'guns/vim-clojure-highlight' " Awesome highlighting

" Solidity
Plugin 'tomlion/vim-solidity'

" Elm
Plugin 'lambdatoast/elm.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on

" See: http://dougblack.io/words/a-good-vimrc.html

" Colors
syntax enable
set background=dark
colorscheme monokai
" Tabs & Spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab       " tabs are spaces
" UI
set number
set relativenumber
set showcmd
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
filetype plugin indent on      " load filetype-specific indent files
set autoindent
set smartindent
set cindent
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
" nnoremap <space> za

" Movement
"   Learn Keys
imap <up> <NOP>
imap <down> <NOP>
imap <left> <NOP>
imap <right> <NOP>
map <up> <NOP>
map <down> <NOP>
map <left> <NOP>
map <right> <NOP>

"   Other
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap BB ^
nnoremap EE $
" $/^ doesn't do anything
" nnoremap $ <nop>
" nnoremap ^ <nop>
" highlight last inserted text
nnoremap gV `[v`]
" remove highlight with Leader + CR
nmap <Leader><CR> :nohlsearch<CR>
" ESCape insert mode with jj
inoremap jj <ESC>

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

setlocal spell spelllang=ru_yo,en_us

" Enable mouse
" set mouse=a

" Nice autocomplete menus
set completeopt=menuone,menu,longest
set wildignore+=*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

" ---------------- Plugins configuration ---------------------

" NERDTree
" Autostart NERDTree
" autocmd vimenter * NERDTree
map <Leader>t :NERDTreeToggle<CR>

" CtrlP
let g:ctrlp_show_hidden = 1

" Snippets & Completions
let g:ycm_dont_warn_on_startup = 0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" Default is YCM
let g:SuperTabDefaultCompletionType = '<C-n>'

" UltiSnips
let g:UltiSnipsSnippetsDir='~/.vim/snippets'
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsExpandTrigger = "<c-space>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

nnoremap <leader>ue :UltiSnipsEdit<cr>

" Supertab
" let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

" if has("gui_running")
"   imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
" else " no gui
"   if has("unix")
"     inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
"   endif
" endif

" NecoGHC Completions
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:ycm_semantic_triggers = {'haskell' : ['.']}

" Ack & Ag search
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif

" Whitespaces
" autocmd BufWritePre * if index(['md'], &ft) < 0 | StripWhitespace
" autocmd FileType javascript,html,ruby autocmd BufWritePre <buffer> StripWhitespace
autocmd BufWritePre *.rb,*.js,*.jsx,*.html,*.css,*.sass StripWhitespace
let g:better_whitespace_filetypes_blacklist=['diff', 'gitcommit', 'unite', 'qf', 'help','markdown']

" Tabular
let g:haskell_tabular = 1

" Markdown Preview
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_temp_file=1
let vim_markdown_preview_toggle=1
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'

" NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a
" region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Syntastic
map <Leader>s :SyntasticToggleMode<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" GHC-mod
map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

