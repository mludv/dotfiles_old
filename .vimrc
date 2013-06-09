set nocompatible
filetype off

" Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-surround'
Bundle 'msanders/snipmate.vim'
Bundle 'marijnh/tern_for_vim'

filetype plugin indent on



" Settings
""""""""""""""""""""""""""""""""""""""""""""

" No more ex mode
nnoremap Q <nop>

" Set shell to bash, fish don't work
set shell=/bin/bash

" Record more history
set history=200

" Make <C-p> and <C-n> filter history results
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Highlight search matches
set hlsearch

" Start search while typing
set incsearch

" Enable mouse
set mouse=a

" Indent with 2 spaces
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Ignore stupid files
set wildignore+=*.swp,*.pyc,*.class

" Treats numbers with leading zeros as decimal
set nrformats=

" Maps %% to current file directory
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup
