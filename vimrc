set nocompatible
filetype off

" Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'pangloss/vim-javascript'
Bundle 'indenthtml.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'Align'
Bundle 'wavded/vim-stylus'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-unimpaired'

filetype plugin indent on

syntax on

" Settings
""""""""""""""""""""""""""""""""""""""""""""

" Colors
set background=dark
colorscheme solarized

" No more ex mode
nnoremap Q <nop>

" Set shell to bash, fish don't work
" set shell=/bin/bash

" Record more history
set history=500

" Make <C-p> and <C-n> filter history results
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Highlight search matches
set hlsearch

" Shortcut for clearing the search
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Shortcut for saving current session and open another
nmap <F2> :wa<Bar>exe "mksession! " . v:this_session<CR>:so ~/.vim/sessions/

" Start search while typing
set incsearch

" Hide files from NETRW file list
let g:netrw_list_hide= '.*\.pyc$'

" Indent body and head in html
let g:html_indent_inctags = "html,body,head,tbody" 

" Enable mouse
set mouse=a

" Indent with 4 spaces
set autoindent
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
