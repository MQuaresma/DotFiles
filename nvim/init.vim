"""""""""""""""Vundle plugin manager""""""""""""""" 
set nocompatible             
filetype off 

set rtp+=~/.config/nvim/bundle/Vundle.vim         " set the runtime path to include Vundle and initialize
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'             " load Vundle

Plugin 'tpope/vim-fugitive'               " git wrapper 
Plugin 'kien/ctrlp.vim'                   " fuzzy file search
Plugin 'junegunn/goyo.vim'                " distraction free mode
Plugin 'itchyny/lightline.vim'            " status-line for vim
Plugin 'scrooloose/nerdtree'              " file explorer integration for vim
Plugin 'whatyouhide/vim-gotham'           " Gotham colorscheme 

call vundle#end()            
filetype plugin indent on    
"""""""""""""""""""""""""""""""""""""""""""""""""""

"Sets runtime for scripts and docs lookup
set runtimepath^=~/.config/nvim/bundle

"Map j+k k+j to go back to command mode
inoremap jk <ESC>
inoremap kj <ESC>

let g:lightline = {
      \ 'colorscheme': 'gotham',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
\ }


"Auto Start NERDTree with vim
"autocmd vimenter * NERDTree
"autocmd vimenter * vertical resize -15

"Bind NERDTree toogle to <C-o>
map <C-o> :NERDTreeToggle<CR>

"Bind noh to <C-n>
map <C-n> :noh<CR>

"Bind resize keys
map <C-up> :vertical resize +5<CR>
map <C-down> :vertical resize -5<CR>

"Goyo (distraction free mode) size config
let g:goyo_width = 1600
let g:goyo_height = 900

"Disable arrow-keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <right> <nop>
imap <left> <nop>
imap <up> <nop>
imap <down> <nop>

"Map Ctrl+key to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Map Ctrl+f to search
"map <C-f> /

" Remap 0 to first non-blank character
map 0 ^

"Bottom bar
set laststatus=2

"Orientation options
set relativenumber              " Shows lines with numbers relative  to the current line
set number                      " Shows line numbers
highlight LineNr ctermfg=red    " Sets line numbers color
set cursorline                  " Highlights the current line
set cursorcolumn                " Highlights the current column

"Treat long lines as break lines
map j gj
map k gk

"Color related configs
colorscheme gotham
set background=dark
syntax enable                   " Enable syntax highlighting
set t_Co=256


"Search options
set ignorecase  "Ignore case when searching
"set hlsearch    "Highlight searches
set incsearch   "Instant search

"Command listing
set wildmenu

"Turn most backup options off
set nobackup
set nowb
set noswapfile

"Use spaces instead of tabs
set expandtab

"Be smart when using tabs ;)
set smarttab

"1 tab = 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent

set lazyredraw "Keeps vim from redrawing the window so often

set mat=2
set encoding=utf-8
set showmatch
set nocompatible