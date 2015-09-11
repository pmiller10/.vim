" VIM Settings

"===== Package Management =====
" load plugins in .vim/bundle directory
execute pathogen#infect()

"===== Formatting & Indentation =====
syntax enable               " syntax highlighting
filetype plugin indent on   " filetype detection (not using this yet)

set smartindent             " (usually) indent properly
set expandtab               " tab = spaces
set tabstop=4               " 1 tab = 4 spaces
set shiftwidth=4            " autoindents = 4 spaces
set nu                      " line numbers

"===== Search =====
set hlsearch                " highlight all search results
set incsearch               " highlight first match as you type search

"===== Plugin Settings =====
"solarized colorscheme:
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

"NERDTree
map <C-n> :NERDTreeToggle<CR>
