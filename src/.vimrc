set nocompatible
filetype off
syntax on

set nu
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set autoindent
set fileformat=unix
set encoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'ycm-core/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jiangmiao/auto-pairs'
Plugin 'morhetz/gruvbox'


call vundle#end()
filetype plugin indent on

colorscheme gruvbox
set background=dark

let g:ycm_autoclose_preview_windows_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let python_highlight_all=1
let g:ycm_autoclose_preview_window_after_completion = 1

command Pyrun execute '! clear;python3 %'
map <F5> :Pyrun<CR>

