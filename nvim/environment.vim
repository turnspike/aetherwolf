set nocompatible " required for arrow keys to work under mac
"set term=linux " also required for arrow keys

" ---- TABS AND SPACES ----

"set autoindent                   " copy indent from current line when starting a new line
"set expandtab                    " spaces not tabs
"set shiftwidth=2                 " spaces used in >>, <<, ==, and autoindent
""set smarttab                    " Remove smarttab since you don't want to use tab characters
"set softtabstop=2                " set tab to use 4 space characters
"set tabstop=2                    " width of tab character

set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set shiftwidth=2    "Indent by 2 spaces when using >>, <<, == etc.
set softtabstop=2   "Indent by 2 spaces when pressing <TAB>

set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisable

" -- don't hard wrap or autoformat
set nowrap
set textwidth=0
set linebreak
"set formatoptions=l
set formatoptions=tqnj
" -- show hidden chars
set list
"set listchars=tab:>-,trail:·
set listchars=tab:→\ ,nbsp:␣

" -- buffers and splits
set hidden " enable multi file editing
set splitbelow " open hsplits down (defaults up)
set splitright " open vsplits right (defaults left)
"set autochdir " set working directory to current file eg for :e

" ---- CURSOR MOVEMENT ----
"
set backspace=indent,eol,start
set nostartofline " preserve column on page movements
set scrolloff=3 " show context above/below cursorline
"set scrolloff=999 " keep cursor centered vertically

" ---- TIMEOUTS (LEADER KEYS, ESC) ----

"set notimeout " no timeouts for key combos
"set nottimeout " no timeouts for key combos
set ttimeout timeout " use timeouts for keyboard combo mappings
set timeoutlen=100 ttimeoutlen=0 " 100ms for key combos, 0ms for <esc>

" ---- COMMANDLINE ----

set path+=** " search down into subfolders
set wildmenu " <tab> autocompletion in commandline
set wildmode=list:longest,full " more linuxy filename completion with <tab>
set wildignore+=*/tmp/*,*/.git/*,*.so,*.swp,*.zip " exclude from <tab> completion
"set rtp+=~/.fzf " add fuzzy finder to runtime path

" ---- BACKUPS ----

set nobackup
set noswapfile
set nowritebackup

" -- search and replace
"set gdefault " always use /g with %s/
set hlsearch " highlight search hits
set incsearch "incremental search
set wrapscan " wrap searches around EOF
set ignorecase
set smartcase
set infercase

" -- copy/paste
"" yank and paste with the system clipboard under x11 (ie not ssh)
"if (executable('pbcopy') || executable('xclip') || executable('xsel')) && has('clipboard')
"    "set clipboard=unnamed
"endif
augroup copyPaste
  " Unset paste on InsertLeave
  au InsertLeave * silent! set nopaste
augroup END

" -- splits
set hidden " enable multi file editing
set splitbelow " open hsplits down (defaults up)
set splitright " open vsplits right (defaults left)

" -- input
set noshowcmd " don't display keypresses in bottom right of screen - it's distracting

" -- mouse
if has('mouse')
  set mouse=a
endif

if exists(':ttymouse')
  set ttymouse = xterm2
endif

" -- folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" -- sessions
"set ssop-=options    " do not store global and local values in a session
"set ssop-=folds      " do not store folds

" -- backups
"let g:cache_home=$XDG_CACHE_HOME.'/nvim'
"silent !mkdir expand(g:cache_home) > /dev/null 2>&1
"execute "set backupdir=".g:cache_home
"execute "set dir=".g:cache_home
"execute "let g:netrw_home='".g:cache_home."'"
"silent !mkdir $HOME/.cache/nvim > /dev/null 2>&1
"set directory=$HOME/.cache/nvim
"set backupdir=$HOME/.cache/nvim
"let g:netrw_home='~/.cache/nvim'
set nobackup
set noswapfile " nvim keeps making huge 50GB .swp files for some reason
set nowritebackup

" -- whitespace
"set list " show trailing whitespace
"set listchars=tab:▸\ ,trail:▫ " whitespace chars

" -- display
"set breakindent " preserve indentation when wrapping
"set noruler
set noshowmode " don't display "INSERT" mode status
set ruler " show cursor position
set title " change the terminal's title
set wmh=0 " window min height = 0, for splits?
set wmw=0 " window min width = 0, for splits?
set noerrorbells " no bell
set shortmess+=atIoOtTF " change the messages shown by vim
set laststatus=0
set noshowcmd

augroup display
  " http://vim.wikia.com/wiki/Highlight_unwanted_spaces
  au BufNewFile,BufRead,InsertLeave * silent! match ExtraWhitespace /\s\+$/
  au InsertEnter * silent! match ExtraWhitespace /\s\+\%#\@<!$/
augroup END

" -- vc, diffs
"https://lornajane.net/posts/2015/vimdiff-and-vim-to-compare-files
set diffopt+=vertical
set diffopt+=iwhite " ignore whitespace
set diffexpr="" " ignore whitespace

" -- neovim
let g:python2_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'
