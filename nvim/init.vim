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

" Set terminal colours
set termguicolors

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
set guifont=FiraCode\ Nerd\ Font\ Mono\ 14

set noshowmode              " Remove the --INSERT-- Line

highlight Comment ctermfg=green

" plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'neovim/nvim-lspconfig'
Plug 'neovim/nvim-lsp'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'airblade/vim-gitgutter'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'hoob3rt/lualine.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/indentLine'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kdheepak/lazygit.nvim'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh', }
Plug 'rust-lang/rust.vim'
Plug 'junegunn/fzf'
Plug 'itchyny/vim-gitbranch'
Plug 'kyazdani42/nvim-web-devicons'
"Plug 'romgrk/barbar.nvim'

call plug#end()

" Color Schemes

"set termguicolors
colorscheme tokyonight
hi Normal guibg=NONE ctermbg=NONE
let g:tokyonight_style = "dark"
let g:tokyonight_transparent = 1 

" set transparency to neovim
hi Normal guibg=NONE ctermbg=NONE

" Calling lua
lua require('init')
lua require('lualine-conf')

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


" Lightline
let g:lightline = {
      \ 'colorscheme': 'tokyonight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-q> :tabclose<CR>

set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

" note that if you are using Plug mapping you should not use `noremap` mappings.
nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
nmap <silent>K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> <F2> <Plug>(lcn-rename)
