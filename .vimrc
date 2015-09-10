" VIM Settings

"===== Formatting & Indentation =====
syntax enable
filetype plugin indent on

set smartindent         " (usually) indent properly
set tabstop=4           " tab = 4 spaces
set shiftwidth=4
set expandtab           " tab = spaces
set nu                  " line numbers

"===== Search =====
set hlsearch            " highlight all search results
set incsearch           " highlight first match as you type search

"===== Colorscheme =====
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
