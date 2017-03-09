set encoding=utf-8
scriptencoding utf-8

if &compatible
  set nocompatible " be iMproved, required
endif

" Clipboard
set clipboard=unnamed
if has("unnamedplus")
  set clipboard+=unnamedplus
  " To copy with cmd+c in vim:
  " set clipboard+=autoselect
end

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

" Guides
Plug 'nathanaelkane/vim-indent-guides'

" Git & Gist
Plug 'tpope/vim-fugitive'
Plug 'mattn/webapi-vim' | Plug 'mattn/gist-vim'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Smooth motion
Plug 'yuttie/comfortable-motion.vim'

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

" HTML
Plug 'mattn/emmet-vim'

" JavaScript
" Plug 'pangloss/vim-javascript'
Plug 'flowtype/vim-flow', { 'do': 'npm install -g flow-bin' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

" Haskell
Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }

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

" Spelling
Plug 'reedes/vim-wordy'

call plug#end()

" See: http://dougblack.io/words/a-good-vimrc.html

" Colors
" syntax enable " do not override theme colors
syntax on     " override theme colors
colorscheme monokai
set t_Co=256
let g:monokai_term_italic = 1

" For molokai theme
" set background=dark
" let g:rehash256 = 1
" let g:molokai_original = 1

" Encodings
set langmenu=en_US.UTF-8
set encoding=utf-8 nobomb
set fileencoding=utf-8 nobomb

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

setlocal linebreak
set colorcolumn=80        " show lines limit
set cursorline            " highlight current line
filetype plugin indent on " load filetype-specific indent files
set autoindent
set smartindent
set cindent
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase smartcase " make searches case-sensitive only if they contain upper-case characters
nmap * *N
nmap # #N

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=syntax
" space open/closes folds
" inoremap <Space> za

" Misc
set lazyredraw          " Improve performance
set hidden              " allow to swith unsaved buffers

" set formatoptions-=o    " do not insert comment on 'o' & 'O'
" set formatoptions+=w    " space on end indicates paragraph break
" set formatoptions+=2    " indent as second line
augroup format_options
  autocmd!
  autocmd FileType * setlocal fo-=o fo+=w fo+=2
augroup END

set history=500
set noerrorbells

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

highlight ColorColumn ctermbg=235

" Stop the cross hair ruining highlighting.
" highlight CursorLine cterm=NONE ctermbg=235 ctermfg=NONE guibg=3a3a3a guifg=NONE
" highlight CursorColumn cterm=NONE ctermbg=235 ctermfg=NONE guibg=3a3a3a guifg=NONE

" Make conceal look better.
highlight Conceal cterm=bold ctermbg=NONE ctermfg=67

" Configure Indent Guides highlighting
highlight IndentGuidesOdd cterm=NONE ctermbg=234 ctermfg=NONE guibg=bg guifg=NONE
highlight IndentGuidesEven cterm=NONE ctermbg=235 ctermfg=NONE guibg=293739 guifg=NONE

" Keys
let g:mapleader = "\<Space>"

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

" Faster split resizing (+,-)
if bufwinnr(1)
  nmap + <C-W>+
  nmap - <C-W>-
endif

" Sudo write (,W)
nnoremap <Leader>w :w<CR>
nnoremap <Leader>W :w !sudo tee %<CR>

" Refresh
set autoread            " Reload file if changed
nnoremap <Leader>r :checktime<CR>
" Auto reload vimrc
augroup vimrc
  autocmd! BufWritePost .vimrc,vimrc,init.vim,$MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
augroup END

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
" nnoremap gV `[v`]
nnoremap <expr> gV '`[' . strpart(getregtype(), 0, 1) . '`]'

" Remove highlight with Leader + h
nmap <Leader>h :nohlsearch<CR>

" Duplicate lines
vmap D y'>p
nmap D YP

" ESCape insert mode with jj
inoremap jj <ESC>
inoremap kk <ESC>
inoremap jk <ESC>

" Close buffer with Q
nnoremap Q :bd<CR>
" nnoremap <C-q> :bd<CR>

" Invoke fzf with Ctrl+P
nnoremap <C-p> :Files<CR>

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

setlocal spell spelllang=ru_yo,en_us

" Enable mouse for all modes except insert
set mouse=nvc

" Nice autocomplete menus
set completeopt=menuone,menu,longest
set wildignore+=*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

" Use XDG directories (don't forget to create them)
set directory=$XDG_CACHE_HOME/vim/swap,~/tmp,/tmp
set backupdir=$XDG_CACHE_HOME/vim/backup,~/,/tmp
" set shada+=n$XDG_CACHE_HOME/vim/viminfo
set undodir=$XDG_CACHE_HOME/vim/undo,~/tmp,/tmp

" ---------------- Custom commands  --------------------------

if !exists(':FilePath')
  command FilePath :let @+ = expand("%")
endif

if !exists(':FilePathAbs')
  command FilePathAbs :let @+ = expand("%:p")
endif

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
let g:ycm_filetype_blacklist = {
  \ 'notes':     1,
  \ 'netrw':     1,
  \ 'unite':     1,
  \ 'tagbar':    1,
  \ 'pandoc':    1,
  \ 'mail':      1,
  \ 'vimwiki':   1,
  \ 'text':      1,
  \ 'infolog':   1,
  \ 'qf':        1
  \}
  " \ 'markdown':  1,

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

" Emmet
let g:user_emmet_mode = 'in'
let g:user_emmet_install_global = 0
autocmd FileType html,css,eruby EmmetInstall

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
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1

let g:syntastic_mode_map = { "mode": "passive" }

let g:syntastic_javascript_checkers = ['eslint', 'flow']

" JavaScript
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

" Flow
let g:flow#autoclose = 1

" GHC-mod
map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

