# .vim
My Vim settings.

## Setup
1. Clone the repo into your home directory:

   `git clone https://github.com/pmiller10/.vim.git`

2. Then create a symlink from the .vimrc in the repo to your home directory:

   `ln -s .vim/.vimrc .vimrc`

3. Clone vundle:

   `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

4. Install plugins: open any file with vim and execute `:PluginInstall`


## Troubleshooting

If you're using git and get this error when you try to make a commit:

```
error: There was a problem with the editor 'vi'.
Please supply the message using either -m or -F option.
```

Then update your git config with
   `git config --global core.editor $(which vim)`


## Plugins
* [vim-indexed-search](https://github.com/henrik/vim-indexed-search) - Lists the total number of search results and index of current match.
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized) - Solarized colorscheme.
* [vim-airline](https://github.com/bling/vim-airline) - Lightweight status bar.
* [nerdtree](https://github.com/scrooloose/nerdtree) - File browser.
