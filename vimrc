set encoding=utf-8
scriptencoding utf-8

if &compatible
  set nocompatible " be iMproved, required
endif

" Clipboard
set clipboard=unnamedplus
" To copy with cmd+c in vim:
" set clipboard=unnamed,autoselect
set pastetoggle=<F2>

call plug#begin('~/.local/share/nvim/plugged')

" Solarized colorscheme
" Plugin 'altercation/vim-colors-solarized'

" Monokai colorscheme
Plug 'crusoexia/vim-monokai'

" Nerd Tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Autocomplete & completion
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --gocode-completer --tern-completer' }
Plug 'ervandew/supertab'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Status bar
Plug 'itchyny/lightline.vim'
Plug 'taohex/lightline-buffer'

" Fuzzy files search
Plug 'mileszs/ack.vim'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'

" Comments
Plug 'scrooloose/nerdcommenter'

" Syntax checker
Plug 'scrooloose/syntastic'

" Git
Plug 'tpope/vim-fugitive'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Surround
Plug 'tpope/vim-surround'

" Motions
Plug 'easymotion/vim-easymotion'

" Markdown
" Plug 'plasticboy/vim-markdown'
Plug 'JamshedVesuna/vim-markdown-preview'

" Execution
" Plug 'Shougo/vimproc.vim', { 'do': 'make' }

" Trailing whitespaces highlighting
Plug 'ntpeters/vim-better-whitespace'

" Aligning
Plug 'godlygeek/tabular'

" Language Packs
Plug 'sheerun/vim-polyglot'

" JavaScript
" Plug 'pangloss/vim-javascript'
Plug 'flowtype/vim-flow', { 'do': 'npm install -g flow-bin' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

" Haskell
Plug 'eagletmt/ghcmod-vim'
Plug 'eagletmt/neco-ghc'

" Clojure
" See: http://blog.venanti.us/clojure-vim/
" Plug 'guns/vim-clojure-static' " Runtime files
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'kien/rainbow_parentheses.vim' " Awesome parantheses
Plug 'guns/vim-clojure-highlight', { 'for': 'clojure' }

" Solidity
" Plug 'tomlion/vim-solidity'

" Elm
" Plug 'lambdatoast/elm.vim'

call plug#end()

" See: http://dougblack.io/words/a-good-vimrc.html

" Colors
syntax enable
set background=dark
colorscheme monokai

" Encodings
set langmenu=en_US.UTF-8
set encoding=utf-8
set fileencoding=utf-8

" Tabs & Spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab       " tabs are spaces

" UI
set number
set relativenumber
set showcmd

if !&scrolloff
  set scrolloff=2
endif
if !&sidescrolloff
  set sidescrolloff=5
endif

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
set ignorecase smartcase " make searches case-sensitive only if they contain upper-case characters

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=syntax
" space open/closes folds
" inoremap <Space> za

" Misc
set autoread            " Reload file if changed
set lazyredraw          " Improve performance

" Highlighting
" Make spelling problems easier to read.
highlight clear SpellBad
highlight clear SpellCap
highlight clear SpellLocal
highlight clear SpellRare

highlight SpellBad cterm=underline
highlight SpellCap cterm=underline
highlight SpellLocal cterm=underline
highlight SpellRare cterm=underline

" Stop the cross hair ruining highlighting.
highlight CursorLine cterm=NONE ctermbg=235 ctermfg=NONE guibg=3a3a3a guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=235 ctermfg=NONE guibg=3a3a3a guifg=NONE

" Make conceal look better.
highlight Conceal cterm=bold ctermbg=NONE ctermfg=67

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

" Swith buffers
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Move to beginning/end of line
nnoremap BB ^
nnoremap EE $

" $/^ doesn't do anything
" nnoremap $ <nop>
" nnoremap ^ <nop>

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Highlight last inserted text
nnoremap gV `[v`]

" Remove highlight with Leader + CR
nmap <Leader><CR> :nohlsearch<CR>

" ESCape insert mode with jj
inoremap jj <ESC>
inoremap kk <ESC>
inoremap jk <ESC>

" Invoke fzf with Ctrl+P
nnoremap <C-p> :Files<CR>

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
let NERDTreeIgnore = ['\.pyc$', '\.tags$', 'tags$', 'tags.lock$', '\.jar$', '^\.bzr$', '^\.hg$', '^\.git$', '\.swp$', '^\.svn', '^\.DS_Store$']
let NERDTreeShowHidden = 1

" Easymotion
map <C-s> <Plug>(easymotion-prefix)

" line movements
map <C-s>l <Plug>(easymotion-bd-jk)
nmap <C-s>l <Plug>(easymotion-overwin-line)

" word movements
map <C-s>/ <Plug>(easymotion-sn)
omap <C-s>/ <Plug>(easymotion-tn)

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

" Lightline config
set noshowmode
set showtabline=2

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'tabline': {
      \   'left': [ [ 'bufferinfo' ], [ 'bufferbefore' , 'buffercurrent' , 'bufferafter' ] ],
      \   'right': [ [ 'close' ] ],
      \ },
      \ 'tab': {
      \   'active': [ 'filename', 'modified' ],
      \   'inactive': [ 'filename', 'modified' ]
      \ },
      \ 'tabline_separator': { 'left': '', 'right': '|' },
      \ 'tabline_subseparator': { 'left': '-', 'right': '+' },
      \ 'component_expand': {
      \   'buffercurrent': 'lightline#buffer#buffercurrent2',
      \ },
      \ 'component_function': {
      \   'bufferbefore': 'lightline#buffer#bufferbefore',
      \   'bufferafter': 'lightline#buffer#bufferafter',
      \   'bufferinfo': 'lightline#buffer#bufferinfo',
      \ },
      \ 'component_type': {
      \   'buffercurrent': 'tabsel',
      \ },
      \ }

let g:lightline_buffer_show_bufnr = 1
let g:lightline_buffer_separator_icon = ''
let g:lightline_buffer_active_buffer_left_icon = ''
let g:lightline_buffer_active_buffer_right_icon = ''

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
" map <Leader>s :SyntasticToggleMode<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" JavaScript
let g:javascript_plugin_flow = 1

" GHC-mod
map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

