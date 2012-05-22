call pathogen#infect()
"call pathogen#helptags()

" forget legacy mode
set nocompatible

set showcmd

" set nowrap " don't wrap lines

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
set ruler
" set relativenumber " show relative line numbers
set number
set title  " change terminal title
set background=light
set cursorline " highlight current line
set cc=80 " show wrap column
" set colorcolumn=80
set laststatus=2 " always show the status line
set t_Co=256 " tell vim explicitly that the terminal has 256 colors
syntax enable
if has('gui_running')
  " colorscheme github
  " colorscheme solarized
  " colorscheme clarity
  " colorscheme zenburn
  colorscheme Tomorrow-Night
else
  colorscheme molokai
endif

" au InsertEnter * :set nu
" au InsertLeave * :set rnu

" files
set nobackup
set noswapfile
set autoread " reload files changed externally
set encoding=utf8

" buffers & co.
set hidden " hide buffers rather than closing them
set history=1000
set undolevels=1000

" window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" resize panes
" map <M-<> <C-w><
" map <M->> <C-w>>

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

" === custom shortcuts ===
" show current file in Nerdtree pane
map <leader>r :NERDTreeFind<cr>
map <leader>n :NERDTreeToggle<cr>

" === plugin specific commands ===
let g:indent_guides_start_level = 2
" autocmd VimEnter * :IndentGuidesEnable

let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=0
let g:syntastic_auto_loc_list=1

map <Leader><Leader> :ZoomWin<CR>
map <Leader>i :IndentGuidesToggle<CR>

" === auto complete ===
function! SuperTab()
  if (strpart(getline('.'),col('.')-2,1)=~'^\W\?$')
    return "\<Tab>"
  else
    return "\<C-n>"
  endif
endfunction
imap <Tab> <C-R>=SuperTab()<CR>
" enable css colors on sass files
"autocmd FileType sass,scss,stylus syn cluster sassCssAttributes add=@cssColors

" use ,F to jump to tag in a vertical split
"nnoremap <Leader>F :let word=expand(""):vsp:wincmd w:exec("tag ". word)
nnoremap <silent> ,F :let word=expand("<cword>")<CR>:vsp<CR>:wincmd w<cr>:exec("tag ". word)<cr>

" use ,gf to go to file in a vertical split
nnoremap <Leader>gf :vertical botright wincmd f

" shortcut for Ack
nnoremap <Leader>a :Ack 

" mouse scroll support
set mouse=a

" === nerd commenter ===
" nerdcommenter
" ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" masochism
" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
