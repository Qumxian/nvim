" =================== bascal config ===================
let &t_ut=''
set encoding=utf-8
set autochdir
set number
set relativenumber
set updatetime=100
set shortmess+=c
set signcolumn=yes
set cursorline
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set list
set listchars=tab:\>\ ,trail:-
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set textwidth=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set ignorecase
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview


autocmd BufRead,BufNewFile *.v set filetype=verilog

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" =================== key mapping ===================
let g:mapleader = ' ' " <LEADER>=space

" =================== plugins ===================
call plug#begin()

" AUTOCOMPLETE
" ===== COC_NVIM =====
Plug 'neoclide/coc.nvim', {'branch': 'release'} 

" ===== SCHEME =====
Plug 'rebelot/kanagawa.nvim', { 'as' : 'kanagawa' }
Plug 'catppuccin/nvim', { 'as' : 'catppuccin' }
Plug 'lewis6991/gitsigns.nvim', { 'as' : 'gitsigns' }

" ===== HIGHLIGHT =====
Plug 'RRethy/vim-illuminate', { 'as' : 'vim-illuminate'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

" plugins configuration
" ======================== coc.nvim ========================
source $HOME/.config/nvim/vimrc.d/plugins/coc_nvim.vim

" ==================nvim-treesitter.lua ===================
lua require("plugins.nvim-treesitter")

" ==================== scheme ====================
silent colorscheme kanagawa-dragon
