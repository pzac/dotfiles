call pathogen#infect()
call pathogen#helptags()

" forget legacy mode
set nocompatible

set showcmd
filetype plugin indent on " use file type plugins

set nowrap " don't wrap lines
set tabstop=2 shiftwidth=2 " a tab is 2 spaces
set expandtab

set backspace=indent,eol,start " allow backspacing over everything in insert mode

" searching
set hlsearch   " highlight search terms
set incsearch  " search as you type
set ignorecase " ignore case when searching
set smartcase  " ignore case if all lower-case

" maintain more context around the cursor
set scrolloff=3

" comfortable leader
let mapleader=","

" interface
set ruler
set number " always show line number
set title  " change terminal title
set background=light
set laststatus=2 " always show the status line
set t_Co=256 " tell vim explicitly that the terminal has 256 colors
syntax enable
colorscheme solarized

" files
set nobackup
set noswapfile

" buffers & co.
set hidden " hide buffers rather than closing them
set history=1000
set undolevels=1000

" window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" useful things
" w!! to force write files that require root permissions
cmap w!! w !sudo tee % >/dev/null
