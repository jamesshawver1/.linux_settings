"fixes copy and paste issues
set paste
set expandtab
set tabstop=4
set shiftwidth=4
set number
set relativenumber
set smarttab

set nocompatible              " be iMproved, required
filetype off                  " required


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() " set the runtime path to include Vundle and initialize

    Plugin 'VundleVim/Vundle.vim'
    Plugin 'nachumk/systemverilog.vim'

call vundle#end() " All of your Plugins must be added before the following line

"enables backspace to work like its supposed to 
set backspace=indent,eol,start

let g:BASH_Ctrl_j = 'off'
let g:C_Ctrl_j = 'off'
"split screen mapping
nnoremap <C-K> <C-W>k
nnoremap <C-J> <C-W>j
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

syntax on
colorscheme elflord
"goto last position in file from close
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
