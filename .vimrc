call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'gabrielelana/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
"""""""""""""""""""""""""""" BEGIN Elixir's stuff
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'slashmili/alchemist.vim'
Plug 'vim-test/vim-test'
"""""""""""""""""""""""""""" END Elixir's stuff
"""""""""""""""""""""""""""" BEGIN PHP's stuff
Plug 'StanAngeloff/php.vim'
"""""""""""""""""""""""""""" END PHP's stuff
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
call plug#end()

set nocompatible
syntax on
filetype plugin indent on

set backspace=indent,eol,start " backspace over everything in insert mode

set nu rnu
set path+=**
set wildmenu

set nobackup
set noswapfile
set noundofile

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

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeWinSize=60

" Elixir's stuff
let g:mix_format_on_save = 1
let g:deoplete#enable_at_startup = 1

" Key mappings
map <C-n> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>

