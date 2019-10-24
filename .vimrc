set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-commentary'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ambv/black'
Plugin 'haya14busa/incsearch.vim'
Plugin 'dense-analysis/ale'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" https://github.com/itchyny/lightline.vim/issues/71
set laststatus=2
syntax enable
set wildmenu

" to enable copy and pasting to system clipboard
" https://stackoverflow.com/questions/11489428/how-to-make-vim-paste-from-and-copy-to-systems-clipboard 
set clipboard+=unnamed

set number
set colorcolumn=80
set cursorline
" https://vimawesome.com/plugin/vim-colors-solarized-ours
set background=dark
colorscheme solarized

set tabstop=4
set shiftwidth=4
set expandtab

"https://unix.stackexchange.com/questions/186166/delete-key-doesnt-work-on-vim-insert-mode-for-deleting-previously-typed-conte
set backspace=indent,eol,start

set incsearch
set mouse=a
"https://vimawesome.com/plugin/incsearch-vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)


" ALE stuff
let g:ale_fixers = {
\   'c': ['clang-format', 'remove_trailing_lines']
\}

let g:ale_fix_on_save = 1

"https://github.com/kien/ctrlp.vim/issues/646
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }

