set nocompatible
set showcmd

" === indentation ===
filetype plugin indent on " use file type plugins
set tabstop=2
set softtabstop=2
set shiftwidth=2 " a tab is 2 spaces
set expandtab
set autoindent
set smartindent
set smarttab

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
set number
set title  " change terminal title
set background=light
set laststatus=2 " always show the status line
set t_Co=256 " tell vim explicitly that the terminal has 256 colors
syntax enable

" files
set nobackup
set noswapfile
set autoread " reload files changed externally
set encoding=utf8

" buffers & co.
set hidden " hide buffers rather than closing them
set history=1000
set undolevels=1000

" useful things
" w!! to force write files that require root permissions
cmap w!! %!sudo tee > /dev/null %

" === whitespace ===
autocmd BufWritePre *.rb :%s/\s\+$//e " remove trailing spaces on ruby files
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR> " F5 removes trailing whitespace

" === file ignore settings ===
set wildignore+=*/.git
set wildignore+=tmp/**,vendor/*,*/.sass-cache/*
set wildignore+=*.png,*.gif,*.jpg

" === filetypes ===
au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,config.ru}    set ft=ruby

" === snippets ===
" ctrl-l to insert ruby's hash rocket =>
imap <C-l> <Space>=><Space>

" mouse scroll support
set mouse=a
