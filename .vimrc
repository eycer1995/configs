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

" --- Using Vundle ---
"  As today date vundle repo was deleted
"  Changed to vim-plug
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

"Plugin 'VundleVim/Vundle.vim'
"Plugin 'tmhedberg/SimpylFold'
"Plugin 'vim-scripts/indentpython.vim'
"Bundle 'ycm-core/YouCompleteMe'
"Plugin 'tpope/vim-fugitive'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'nvie/vim-flake8'
"Plugin 'jiangmiao/auto-pairs'
"Plugin 'morhetz/gruvbox'
"Plugin 'catppuccin/vim'
"Plugin 'preservim/nerdtree'
"Plugin 'vim-airline/vim-airline'


"call vundle#end()
" Load plugins using :PluginInstall
" To install from command line: vim +PluginInstall +qall

" --- Using vim-plug ---

" auto install vim-plug

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'jiangmiao/auto-pairs'
Plug 'catppuccin/vim', {'as': 'catppuccin'}
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'

call plug#end()
" Load plugins with :PlugInstall

filetype plugin indent on
colorscheme catppuccin_mocha
set termguicolors

" --- Custom configs ---
"let g:ycm_autoclose_preview_windows_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let python_highlight_all=1
"let g:ycm_autoclose_preview_window_after_completion = 1

command Pyrun execute '! clear;python3 %'
map <F5> :Pyrun<CR>

" --- NERDTree configs ---
" Docs in :help NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
