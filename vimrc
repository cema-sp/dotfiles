set encoding=utf-8
scriptencoding utf-8

if &compatible
  set nocompatible " be iMproved, required
endif

" Clipboard
set clipboard^=unnamed
if has("unnamedplus")
  set clipboard^=unnamedplus
  " To copy with cmd+c in vim:
  " set clipboard+=autoselect
end

" Clear autocmds
augroup vimrc
  autocmd!
augroup END

set pastetoggle=<F2>

call plug#begin('~/.local/share/nvim/plugged')

" Colorschemes
" Plugin 'altercation/vim-colors-solarized'
Plug 'crusoexia/vim-monokai'
" Plug 'dracula/vim'
" Plug 'junegunn/seoul256.vim'

" EditorConfig
Plug 'sgur/vim-editorconfig'

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
Plug 'w0rp/ale'

" Guides
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'Yggdroot/indentLine'  " slows down vim

" Git & Gist
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'mattn/webapi-vim' | Plug 'mattn/gist-vim'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Smooth motion
Plug 'yuttie/comfortable-motion.vim'

" Pairs mappings
Plug 'tpope/vim-unimpaired'

" Surround
Plug 'tpope/vim-surround'

" Text objects
Plug 'wellle/targets.vim'

" Expand regions
Plug 'terryma/vim-expand-region'

" Motions
Plug 'easymotion/vim-easymotion'

" Joins and Splits
Plug 'AndrewRadev/splitjoin.vim'

" Substitution & Coercion
Plug 'tpope/vim-abolish'

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
Plug 'ternjs/tern_for_vim', { 'do': 'npm install -g tern' }
Plug 'maxmellon/vim-jsx-pretty'

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
" set termguicolors " enable truecolor
" syntax enable " do not override theme colors
syntax on     " override theme colors
colorscheme monokai
set t_Co=256
set background=light
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

" For seoul256
" let g:seoul256_background = 235

" For molokai theme
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
  set scrolloff=5
endif
if !&sidescrolloff
  set sidescrolloff=8
endif

setlocal linebreak
set textwidth=78
set colorcolumn=+3        " show lines limit (78 + 3)
set cursorline            " highlight current line
filetype plugin indent on " load filetype-specific indent files
set autoindent
set smartindent
set cindent
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set synmaxcol=512       " don't syntax highlight long lines

set noshowcmd           " don't show command
set noshowmode          " don't show mode

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
set ttimeout
set ttimeoutlen=100
set fileformats+=mac
set nojoinspaces

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

" highlight Search cterm=underline,bold ctermfg=227 ctermbg=239 gui=underline,bold guifg=#FFFF5F guibg=#4E4E4E
highlight Search cterm=underline,bold ctermfg=NONE ctermbg=239 gui=underline,bold guifg=NONE guibg=#4E4E4E

" Stop the cross hair ruining highlighting.
highlight CursorLine cterm=NONE ctermbg=235 ctermfg=NONE guibg=#3A3A3A guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=235 ctermfg=NONE guibg=#3A3A3A guifg=NONE

" Make conceal look better.
highlight Conceal cterm=bold ctermbg=NONE ctermfg=237 guibg=NONE guifg=#3A3A3A

" Configure Indent Guides highlighting
highlight IndentGuidesOdd cterm=NONE ctermbg=235 ctermfg=NONE guibg=#262626 guifg=NONE
highlight IndentGuidesEven cterm=NONE ctermbg=235 ctermfg=NONE guibg=#262626 guifg=NONE
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

highlight ALEErrorSign cterm=NONE ctermbg=235 ctermfg=161 guibg=#262626 guifg=#d7005f
highlight ALEWarningSign cterm=NONE ctermbg=235 ctermfg=166 guibg=#262626 guifg=#d75f00

" let g:indentLine_setColors = 0
" let g:indentLine_color_term = 237 " see Conceal
" map <Leader>ig :IndentLinesToggle<CR>

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
  nmap = <C-W>+
  nmap - <C-W>-
  nmap _ <C-W><
  nmap + <C-W>>
endif

" Sudo write (,W)
nnoremap <Leader>w :w<CR>
nnoremap <Leader>W :w !sudo tee %<CR>

" Refresh
set autoread            " Reload file if changed
" nnoremap <Leader>r :checktime<CR>
" Auto reload vimrc
" augroup vimrc
"   autocmd! BufWritePost .vimrc,vimrc,init.vim,$MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
" augroup END

" Move to beginning/end of line/file
nmap BB ^
nmap EE $
vmap BB ^
vmap EE g_
nnoremap <CR> G
nnoremap <BS> gg

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

" Close buffer with Q and open prev
nnoremap Q :bp <BAR> bd #<CR>
" nnoremap <C-q> :bd<CR>

" Invoke fzf with Ctrl+P
nmap <silent> <C-p> :Files<CR>
nmap <silent> <C-b> :Buffers<CR>
nnoremap <C-a> :Ag<CR>
vnoremap <C-a> y :Ag <C-R>"<CR>

" Terminal
" tnoremap <Esc> <C-\><C-n>
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l

set path+=$PWD

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

setlocal spell spelllang=ru_yo,en_us

" Enable mouse for all modes except insert
set mouse=nvc

" Nice autocomplete menus
set completeopt=menuone,menu,longest
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest
set wildignore+=*.swp,*.swo,*.zip,.git,.cabal-sandbox

" Use XDG directories (don't forget to create them)
set directory=$XDG_CACHE_HOME/vim/swap,~/tmp,/tmp
set backupdir=$XDG_CACHE_HOME/vim/backup,~/,/tmp
" set shada+=n$XDG_CACHE_HOME/vim/viminfo
set undodir=$XDG_CACHE_HOME/vim/undo,~/tmp,/tmp

augroup FiletypeDetect
  autocmd!
  autocmd BufRead,BufNewFile *.arb set filetype=ruby | set syntax=ruby
  autocmd BufRead,BufNewFile schema.rb set filetype=ruby | set syntax=off
  " autocmd BufRead,BufNewFile *.jsx set filetype=jsx
augroup END

" ---------------- Custom commands  --------------------------

if !exists(':FilePath')
  command FilePath :let @+ = expand("%")
endif

if !exists(':FilePathAbs')
  command FilePathAbs :let @+ = expand("%:p")
endif

" ---------------- Neovim tuning -----------------------------

let g:python_host_prog="/usr/local/bin/python2"
let g:python3_host_prog="/usr/local/bin/python3"

" ---------------- Plugins configuration ---------------------

" NERDTree
" Autostart NERDTree
" autocmd vimenter * NERDTree
map <Leader>t :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.tags$', 'tags$', 'tags.lock$', '\.jar$', '^\.bzr$', '^\.hg$', '^\.git$', '\.swp$', '^\.svn', '^\.DS_Store$']
let NERDTreeShowHidden = 1

" Expand regions
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Comfortable motion
let g:comfortable_motion_no_default_key_mappings = 1
nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-100)<CR>

" Easymotion
" map <C-s> <Plug>(easymotion-prefix)
map <Leader><Leader> <Plug>(easymotion-prefix)

" Search forward
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" line movements
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" word movements
map <Leader>/ <Plug>(easymotion-sn)
omap <Leader>/ <Plug>(easymotion-tn)

let g:EasyMotion_smartcase = 1

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
set showtabline=2

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'right': [ [ 'mode', 'paste' ],
      \              [ 'readonly', 'filename', 'modified' ],
      \              [ 'linter_warnings', 'linter_errors', 'linter_ok' ] ],
      \ },
      \ 'tabline': {
      \   'left': [ [ 'bufferinfo' ],
      \             [ 'bufferbefore' , 'buffercurrent' , 'bufferafter' ] ],
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
      \   'bufferbefore':     'lightline#buffer#bufferbefore',
      \   'bufferafter':      'lightline#buffer#bufferafter',
      \   'bufferinfo':       'lightline#buffer#bufferinfo',
      \   'linter_warnings':  'LightlineLinterWarnings',
      \   'linter_errors':    'LightlineLinterErrors',
      \   'linter_ok':        'LightlineLinterOK',
      \ },
      \ 'component_type': {
      \   'readonly':         'error',
      \   'buffercurrent':    'tabsel',
      \   'linter_warnings':  'warning',
      \   'linter_errors':    'error',
      \   'linter_ok':        'ok',
      \ },
      \ }

let g:lightline_buffer_show_bufnr = 1
let g:lightline_buffer_separator_icon = ''
let g:lightline_buffer_active_buffer_left_icon = ''
let g:lightline_buffer_active_buffer_right_icon = ''

" Ack & Ag search
if executable('ag')
  " let g:ackprg = 'ag --nogroup --nocolor --column'
  let g:ackprg = 'ag --nogroup --column --hidden --ignore .git'
endif

" Whitespaces
" autocmd BufWritePre * if index(['md'], &ft) < 0 | StripWhitespace
" autocmd FileType javascript,html,ruby autocmd BufWritePre <buffer> StripWhitespace
autocmd BufWritePre *.rb,*.js,*.jsx,*.html,*.css,*.sass,*.coffee,*.cjsx StripWhitespace
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

" ALE
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_enter = 0
" let g:ale_linters = { 'jsx': ['stylelint', 'eslint'] }
" let g:ale_linter_aliases = { 'jsx': 'css' }
" let g:ale_set_loclist = 1
" let g:ale_set_quickfix = 0

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '◆'

" ALE + Lightline

function! LightlineLinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ◆', all_non_errors)
endfunction

function! LightlineLinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ✗', all_errors)
endfunction

function! LightlineLinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '✓' : ''
endfunction

autocmd User ALELint call lightline#update()

" JavaScript
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:vim_jsx_pretty_colorful_config = 1

" Flow
let g:flow#autoclose = 1

" GHC-mod
map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

" Enable project-specific .vimrc with only secure commands
set exrc
set secure
