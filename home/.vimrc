"file: .vimrc

execute pathogen#infect()


"==============================================================================
" General {{{
"==============================================================================
set history=500                                     "set how many lines of history

filetype plugin on                                  "enable filetype plugins
filetype indent on

set exrc                                            "allow local configs
set secure                                          "disable some commands

autocmd FileType * setlocal formatoptions-=cro      "never auto insert comments

"Return to the last edit position when opening files
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

set autoread                                        "autoread files when they change

let mapleader = "\\"                                 "set mapleader for extra key combinations
let g:mapleader = "\\"

set clipboard=unnamedplus

set lazyredraw                                      "only redraw when necessary

let $PATH = $PATH . ':' . expand('~/.local/bin')


" }}}

"==============================================================================
" Latex Mode {{{
"==============================================================================
" Using vimtex
" Most basic usage: \\ll to launch latexmk and zathura
let g:tex_flavor='xelatex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
"set conceallevel=1
"let g:tex_conceal='abdmg'

" clean up auxiliary files on exit
augroup vimtex_config
  autocmd!
  autocmd User VimtexEventQuit call vimtex#compiler#clean(0)
augroup END

" }}}


"==============================================================================
" Haskell Mode {{{
"==============================================================================
map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

let g:haskell_tabular = 1
vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

"let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

"if has("gui_running")
    "imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o")<cr>
"else
    "if has("unix")
        "inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o")<cr>
    "endif
"endif

let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc


" }}}

"==============================================================================
" VIM User Interface {{{
"==============================================================================
set wildmenu                                        "turn on the wild menu
set wildmode=longest:full,full
set wildignore=*.o,*~,*.pyc                         "ignore compiled files
set wildignore+=*.swp,*.swo,*.zip,.git,.stack-work

set cmdheight=2                                     "height of the command bar

set mouse=a                                         "enable the mouse in all modes

set ignorecase                                      "ignore cases when searching
set smartcase
set hlsearch                                        "highlight search results
set incsearch                                       "search as soon as we start typing

set showmatch                                       "show matching brackets when we mouse over them
set mat=2                                           "how many seconds to blink when matching


set number                                          "show line numbers
set showcmd                                         "show last command in bottom bar
set cursorline                                      "highlight current line

set guioptions=                                     "remove menubar, toolbar, and scrollbars

set cursorline                                      "highlight current line
set showcmd                                         "show last command in bottom bar
set number                                          "show line numbers

set foldenable                                      "enable folding
set foldlevelstart=1                                "how many folds to open by default
nnoremap <space> za
set foldmethod=marker                               "folds deliminated by markers

map<Leader>n :NERDTreeToggle<CR>                    "nerdtree file browsing

" }}}

"==============================================================================
" Colors and Fonts {{{
"==============================================================================
syntax enable                                       "enable syntax highlighting

"let base16colorspace=256
"colorscheme base16-default
set background=dark

" }}}

"==============================================================================
" Files, backups and undo {{{
"==============================================================================
set nobackup                                        "don't backup files
set noswapfile
set nowb

set undodir=~/.vim/undodir                          "undos persist on buffer close
set undofile

" }}}

"==============================================================================
" Text, tabs and indent related {{{
"==============================================================================
set expandtab                                       "use spaces instead of tabs

set smarttab                                        "insert a mix of tabs and spaces when appropriate

set softtabstop=2                                   "set tabwidth to two
set shiftwidth=2
set tabstop=2

" }}}

"==============================================================================
" Key Bindings {{{
"==============================================================================
"Move a line of text using SHIFT+[jk]
nmap <S-j> mz:m+<cr>`z
nmap <S-k> mz:m-2<cr>`z

"Move vertically by visual line
nnoremap j gj
nnoremap k gk

"Move to the beginning/end of a line
nnoremap B ^
nnoremap E $

"Saving typo
command W w

"}}}

"==============================================================================
" Misc {{{
"==============================================================================
set noerrorbells                                    "No sounds or buzzers
set novisualbell
set t_vb=
set tm=500

"Enable spellchecking
set spell
hi clear SpellBad                                   "Use underline to highlight errors
hi SpellBad cterm=underline
hi SpellBad gui=undercurl

" }}}
