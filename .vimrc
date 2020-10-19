call plug#begin()
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'gabrielelana/vim-markdown'
Plug 'tpope/vim-fugitive'
call plug#end()

set nocompatible
syntax enable
filetype plugin on

set nu rnu
set path+=**
set wildmenu

" Unified color scheme (default: dark)
colo seoul256

" Switch
set background=dark

let g:goyo_width = 80
let g:goyo_height = 40

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


" Show line number
" set number

" Incrementally match the search
set incsearch

" Enable search highlighting
set hlsearch

" Encoding UTF-8
set encoding=utf-8

" Ignore cases in finder
set ignorecase

" Turn on spell checker
" set spell

" Show last status
set laststatus=2

" Use auto indent for writing
set autoindent

