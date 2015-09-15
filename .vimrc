" VIM Settings



"===== Package Management =====
" load plugins in .vim/bundle directory
execute pathogen#infect()



"===== Formatting =====
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

" solarized colorscheme:
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" NERDTree
" map Tab-o to open/toggle NERDTree
" remember: <C-I> == Tab key
map <C-I>o :NERDTreeToggle<CR>

" vim-airline
set laststatus=2            " always show the status bar
set ttimeoutlen=50          " shorten pause after leaving insert mode



"===== Misc Mappings =====

" use ctrl-n to toggle numbers
function! NumberNo()
    set nonumber
    map <C-n> :call NumberYes()<CR>
endfunction
function! NumberYes()
    set number
    map <C-n> :call NumberNo()<CR>
endfunction
map <C-n> :call NumberNo()<CR>

" ctrl-w-<motion> is awkward, so just use tab-<motion> to switch windows
" remember: <C-I> == Tab key
map <C-I>h <C-w>h
map <C-I>j <C-w>j
map <C-I>k <C-w>k
map <C-I>l <C-w>l

" jump to last position
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g`\"" | endif
endif
