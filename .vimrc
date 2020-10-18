call plug#begin()
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'gabrielelana/vim-markdown'
call plug#end()


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

" Turn on spell checker
" set spell

