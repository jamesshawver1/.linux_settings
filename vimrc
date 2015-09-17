"fixes copy and paste issues
set paste
set expandtab
set tabstop=4
set shiftwidth=4
set number
set relativenumber
colorscheme elflord
set smarttab

set nocompatible              " be iMproved, required
filetype off                  " required

let g:tex_flavor='latex'
syntax enable

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'nachumk/systemverilog.vim'





" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"enables backspace to work like its supposed to 
set backspace=indent,eol,start

let g:BASH_Ctrl_j = 'off'
let g:C_Ctrl_j = 'off'
"split screen mapping
nnoremap <C-K> <C-W>k
nnoremap <C-J> <C-W>j
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

"goto last position in file from close
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
