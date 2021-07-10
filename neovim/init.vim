" File Name           :        .init.vim
" Location            :         ~/
" Author              :         macr0she11(Arjun V)
" Authored Date       :         2020/05/20
" Last Modified Date  :         2021/07/10

" Set compatibility to Vim only.
set nocompatible            

" Load Plug-ins correctly when returned with error
filetype off

" Syntax highlighting enabled
syntax enable

" Disable swap files
set noswapfile

" Automatically wrap text that extends beyond the screen length
set wrap

" Vim's auto indentation feature does not work properly with text copied from outside of Vim. 
" Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Auto intendation enabled
set autoindent

" set shift width to 4
set shiftwidth=4

" Set shift round to 4
set shiftround

" Set tab stop
set tabstop=4

" Set soft tab stop
set softtabstop=4

" Set whitespace to 4
set expandtab

" Set file format to unix style
set fileformat=unix
set smartindent             " Set smart indentation
set showmatch               " Shows the matching pair.
set matchpairs+=<:>         " Highlights the matching brackets.
set hidden                  " Buffer hidden when abandoned.
set backspace=indent,eol,start " Use backapace to remove indentation, eol and start
set encoding=utf-8          " Encoding set to UTF-8.
set number relativenumber   " Line number enabled.
set ttyfast                 " Fast scrolling enabled.
set scrolloff=7		    " Scroll with 7 lines
set incsearch               " Enable incremental search 
set hlsearch                " Highlight matching search pattern.

" Set ruler
set ruler   
" Add alignment support for tab
set list lcs=tab:\|\ 
set list

" Set Custom font
set guifont=Roboto\ Mono\ for\ Powerline\ 14

highlight Comment ctermfg=green

" plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'airblade/vim-gitgutter'
" Plug 'arcticicestudio/nord-vim'  " Nord theme
Plug 'ayu-theme/ayu-vim'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'Yggdroot/indentLine'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

" Color Schemes
" colorscheme nord

set termguicolors
let ayucolor='dark'
colorscheme ayu

" Calling lua
lua require('init')

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let NERDTREEQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

" IndentLine
let g:indentLine_char = '│' 
let g:indentLine_first_char = '│'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0

