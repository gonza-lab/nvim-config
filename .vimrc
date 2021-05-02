set hidden
set cmdheight=2
set updatetime=300
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
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mhinz/vim-signify'
Plug 'scrooloose/nerdcommenter'
Plug 'yggdroot/indentline'
Plug 'SirVer/ultisnips'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'MaxMEllon/vim-jsx-pretty'

" Typing
Plug 'jiangmiao/auto-pairs'

call plug#end()

let mapleader=" "
let g:indentLine_char = '▏'

" NERDTree
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

" coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
set shortmess+=c
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" UtilSnips
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'

" Signify
set updatetime=100

" vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

" Theme
colorscheme gruvbox

nmap <Leader>nt :NERDTreeFind<CR>
nmap <silent> <leader>n :nohlsearch<CR>
nmap <Leader>y "+y<CR>
nmap <Leader>p :Prettier<CR>

autocmd FileType scss setl iskeyword+=@-@
filetype plugin on
