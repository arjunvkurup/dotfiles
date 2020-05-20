" File Name           :        .vimrc
" Location            :         ~/
" Author              :         macr0she11(Arjun V)
" Authored Date       :         2020/05/20
" Last Modified Date  :         2020/05/20

set nocompatible            " Set compatibility to Vim only.

filetype off                " Load plug-ins correctly when returned with error.

syntax on                   " Syntax highlighting enabled.

set wrap                    " Automatically wrap text that extends beyond the screen length.

" Vim's auto indentation feature does not work properly with text copied from outside of Vim. 
" Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

set autoindent              " Auto intendation enabled.
set shiftwidth=4            " Set shift width to 4.
set shiftround              " Set shift round width to 4.
set smartindent             " Set smart indentation

set showmatch               " Shows the matching pair.
set matchpairs+=<:>         " Highlights the matching brackets.
set hidden                  " Buffer hidden when abandoned.

set encoding=utf-8          " Encoding set to UTF-8.
set number                  " Line number enabled.

set ttyfast                 " Fast scrolling enabled.

set incsearch               " Enable incremental search 
set hlsearch                " Highlight matching search pattern.

set ruler

highlight Comment ctermfg=green

