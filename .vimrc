" auto install plug.vim

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
set background=dark
set cursorline
set enc=utf8
set hls
set mouse=nv
set number
set ic
set expandtab
set tabstop=2
set shiftwidth=2
set wrap
set noeb
set autochdir
set scrolloff=3
set foldenable
set foldmethod=indent
set foldcolumn=1
set foldlevel=5
set shell=/bin/bash
set cursorline
set cursorcolumn

" auto install plugin
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


autocmd BufWritePre * Neoformat

call plug#begin()

Plug 'sbdchd/neoformat'

call plug#end()

