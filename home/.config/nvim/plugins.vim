"-- install vim-plug if needed
if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
    execute '!curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.local/share/nvim/plugged')

"#-- editing

Plug 'matze/vim-move' " move chunks using <A-k> and <A-j>
Plug 'timkendrick/vim-duplicate' " duplicate chunks using <leader>-d
map <leader>d <Plug>Duplicate

" visually select outwards using <v>
Plug 'terryma/vim-expand-region'
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" region commenting
Plug 'scrooloose/nerdcommenter'
let g:NERDDefaultAlign = 'left' " comment delimiters hard left
"let g:NERDSpaceDelims = 1 " add spaces after comment delimiters by default
"let g:NERDCompactSexyComs = 1 " use compact syntax for prettified multi-line comments
let g:NERDCommentEmptyLines = 1 " allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1 " enable trimming of trailing whitespace when uncommenting

" whitespace
"Plug 'thirtythreeforty/lessspace.vim' "strip whitespace only on edited lines
Plug 'ntpeters/vim-better-whitespace' " hilight and work with trailing whitespace
autocmd BufEnter * EnableStripWhitespaceOnSave " auto strip whitespace

"-- git plugins

" show git line status in left gutter
Plug 'airblade/vim-gitgutter'
"nnoremap <leader>gg :GitGutterToggle<CR>

"-- project/layout plugins

"Plug 'justinmk/vim-dirvish'

"Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
nnoremap <leader>tn :NERDTreeToggle<CR>
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'sjbach/lusty'
nnoremap <leader>tl :LustyFilesystemExplorer<CR>
" tpope/vim-sleuth

" show tag sidebar for current file
Plug 'majutsushi/tagbar'
nnoremap <leader>tt :TagbarToggle<CR>

" tmux integration
"Plug 'tmux-plugins/vim-tmux-focus-events'
"Plug 'roxma/vim-tmux-clipboard'
"Plug 'christoomey/vim-tmux-navigator'
"let g:tmux_navigator_no_mappings = 1
"nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
"nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
"nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
"nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
"nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

"-- status bar mods
Plug 'bling/vim-airline'

" airline - use unicode symbols (terminal friendly)
" TODO make conditional on term mode
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '❖'
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = '✂' " :set paste symbol
let g:airline_symbols.spell = 's'
let g:airline_symbols.notexists = '✖'
let g:airline_symbols.whitespace = '☰'

"let g:airline_section_c = '' " default is (bufferline or filename)
"let g:airline_section_x = '' " default is (tagbar, filetype, virtualenv)
let g:airline_section_y = '' " default is (fileencoding, fileformat)

"let g:airline#extensions#tabline#enabled = 0
"let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#show_buffers = 0
"let g:airline#extensions#tabline#show_splits = 0

Plug 'vim-airline/vim-airline-themes'
let g:airline_theme = 'powerlineish'

" show mark info in gutter
Plug 'kshenoy/vim-signature'

" start screen menu
Plug 'mhinz/vim-startify'

"-- languages
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

call plug#end()

