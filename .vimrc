set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set encoding=utf-8
set showmatch
set sw=2
set relativenumber

call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mhinz/vim-signify'
Plug 'scrooloose/nerdcommenter'
Plug 'yggdroot/indentline'

call plug#end()

colorscheme gruvbox

let mapleader=" "
let NERDTreeQuitOnOpen=1
let g:indentLine_char = '▏'

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <silent> <leader>n :nohlsearch<CR>

filetype plugin on
