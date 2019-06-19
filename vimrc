set nocompatible
set t_Co=256

"*******************General Config**********************

set number "relativenumber
set clipboard=unnamedplus
set backspace=indent,eol,start "Allow backspace in insert mode
set history=1000               "Store cmdline history
set showcmd                    "Show incomplete commands down the bottom
set showmode                   "Show current mode on the bottom
set gcr=a:blinkon0             "disable cursor blink
"set visualbell                 "no annoying sound
set autoread                   "reload files changed outside vim

set hidden                     "buffers can exist without being in a window

syntax on                      "enables syntax highlighting

"Change leader to a comma because backslash is too far away!
let mapleader=","
set timeout timeoutlen=1500

set directory^=$HOME/.vim/tmp// "saves all .swp files to one place


"*******************Folding********************
set foldmethod=indent           "fold is based on indents
set foldnestmax=3               "deepest fold is 3 levels
set nofoldenable                "don't fold by default

"*******************Scrolling********************
set scrolloff=8                 "keep us 8 lines from margin
set sidescrolloff=15
set sidescroll=1

"*******************Searching*******************
set incsearch                   "Finds the next match as we type the search
set hlsearch                    "highlights search item
set ignorecase                  " makes case insensitive
set smartcase                   " explicit capitals are sensitive


"*******************Indentation*******************
set autoindent
set smartindent
set smarttab                   "converts tab to spaces

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype go setlocal expandtab tabstop=8 shiftwidth=8 softtabstop=8
autocmd Filetype cpp setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
set shiftwidth=2
set softtabstop=2 
set tabstop=2                  "two spaces per tab
set expandtab

"Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:.

set nowrap                     "Don't wrap the line!
set linebreak                  "Ok, wrap lines at convenient points




filetype off
set rtp+=~/.vim/bundle/vundle
"call vundle#begin()
call vundle#rc()
"Don't forget to run command :PluginInstall
"Plugin 'VundleVim/Vundle.vim'
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'altercation/vim-colors-solarized'

set background=dark
let g:solarized_termcolors = 256
colorscheme solarized

"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"call vundle#end()
filetype plugin indent on

map <C-n> :NERDTreeToggle<Cr>

let g:NERDTreeDirArrows = 0

"let g:airline#extensions#branch#enabled = 1
"let g:airline_powerline_fonts = 1
