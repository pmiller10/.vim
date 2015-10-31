" Paul's Settings



"===== Package Management =====

" load plugins in .vim/bundle directory
set nocompatible            " be iMproved, required by vundle
filetype off                " required by vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My plugins
Plugin 'scrooloose/nerdtree'
Plugin 'henrik/vim-indexed-search'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()           " required by vundle
filetype plugin indent on   " required by vundle



"===== Formatting =====
syntax enable               " syntax highlighting
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

" map Tab-o to open/toggle NERDTree
map <C-I>o :NERDTreeToggle<CR>


" jump to last position
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g`\"" | endif
endif
