" |=================== bascal config ===================|
let &t_ut=''
set encoding=utf-8
set autochdir
set number
set relativenumber
set updatetime=100
set shortmess+=c
set signcolumn=yes
set cursorline
" set expandtab
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

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" |=================== plugins ===================|
call plug#begin()

" AUTOCOMPLETE
" ===== COC_NVIM =====
Plug 'neoclide/coc.nvim', {'branch': 'release'} 

" ===== SCHEME =====
" Plug 'folke/tokyonight.nvim', { 'as' : 'tokyonight' }
" Plug 'rebelot/kanagawa.nvim', { 'as' : 'kanagawa' }
" Plug 'catppuccin/nvim', { 'as' : 'catppuccin' }
Plug 'lewis6991/gitsigns.nvim', { 'as' : 'gitsigns' }
Plug 'nvim-tree/nvim-tree.lua', { 'as' : 'nvim-tree'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'

" ===== HIGHLIGHT =====
Plug 'RRethy/vim-illuminate', { 'as' : 'vim-illuminate'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'norcalli/nvim-colorizer.lua'

" ===== TOOLS =====
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }

call plug#end()

" ========== scheme ==========
" lua require("plugins.catppuccin")

" plugins configuration
" ========== coc.nvim ==========
source $XDG_CONFIG_HOME/nvim/vimrc.d/plugins/coc_nvim.vim

" ========== nvim-treesitter.lua ==========
lua require("plugins.nvim-treesitter")

" ========== vim-illuminate ==========
lua require("plugins.illuminate")

" ========== gitsigns ==========
lua require("plugins.gitsigns")

" ========== kanagawa ==========
" lua require("plugins.kanagawa")

" ========== lualine ==========
lua require("plugins.lualine")

" ========== colorizer ==========

" ========== nvim-tree ==========
lua require("plugins.nvim-tree")


" |=================== key mapping ===================|
let g:mapleader = ' ' " <LEADER>=space

source $XDG_CONFIG_HOME/nvim/vimrc.d/keymap/nvimtree.vim

source $XDG_CONFIG_HOME/nvim/vimrc.d/keymap/telescope.vim

