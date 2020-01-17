set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style

"set -g default-terminal     "tmux-256color"

filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

colorscheme default

let g:mapleader = ' '

nnoremap <leader>s :set invspell<CR>
inoremap <leader>d <C-R>=strftime("%Y-%m-%dT%H:%M")<CR>

call plug#begin('~/.config/nvim/plugged')
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif


Plug 'deoplete-plugins/deoplete-jedi'
call plug#end()

let g:deoplete#enable_at_startup = 1