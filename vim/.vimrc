" README
" Follow these steps
" 1. Clone this repo using `git clone  https://github.com/vipulkrsingh/config.git`
" 2. cd ~;ln -s config/vim/.vimrc
" 3. install vbundel `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
" 4. let vbundle install other plugins `vim +BundleInstall +qall`



" Get rid of backwards compatible settings
set nocompatible
" Show line numbers
set number
" Alwas show status at bottom of the window
set ruler
" support for syntax hilighting
syntax on

" The pathogen magik
execute pathogen#infect()

filetype plugin indent on

" Basic settings
set nocompatible              " Eliminate backwards-compatability
set number                    " Enable line numbers
set ruler                     " Turn on the ruler
syntax on                     " Syntax highlighting

" ode format settings
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

if has("autocmd")
  "Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif

 " Plugins
 filetype off                  " Req'd for vundle
 set rtp+=~/.vim/bundle/vundle " Vundle prelude
 call vundle#rc()              " ^

 Bundle 'gmarik/vundle'
 Bundle 'scrooloose/nerdtree'
 Bundle 'kien/ctrlp.vim'
 Bundle 'scrooloose/syntastic'
 Bundle 'bling/vim-airline'
 Bundle 'xolox/vim-misc'
 Bundle 'xolox/vim-easytags'

" Post-vundle
 filetype plugin indent on     " Req'd for vundle


