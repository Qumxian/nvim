local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- AUTOCOMPLETE
-- ===== lsp =====
--Plug ('neoclide/coc.nvim', { ['branch'] = 'release'})
Plug ('neovim/nvim-lspconfig')
Plug ('mason-org/mason.nvim')
Plug ('hrsh7th/nvim-cmp')
Plug ('hrsh7th/cmp-nvim-lsp')
Plug ('hrsh7th/cmp-buffer')
Plug ('hrsh7th/cmp-path')
Plug ('hrsh7th/cmp-cmdline')
Plug ('hrsh7th/nvim-cmp')
Plug ('L3MON4D3/LuaSnip')



-- ===== SCHEME =====
-- Plug ('folke/tokyonight.nvim', { [as] = 'tokyonight' })
-- Plug ('rebelot/kanagawa.nvim', { [as] = 'kanagawa' })
-- Plug ('catppuccin/nvim', { [as] = 'catppuccin' })
Plug ('lewis6991/gitsigns.nvim', { ['as'] = 'gitsigns' })
Plug ('nvim-tree/nvim-tree.lua', { ['as'] = 'nvim-tree'})
Plug ('nvim-lualine/lualine.nvim')
Plug ('nvim-tree/nvim-web-devicons')
Plug ('ellisonleao/gruvbox.nvim')

-- ===== HIGHLIGHT =====
Plug ('RRethy/vim-illuminate', { ['as'] = 'vim-illuminate'})
Plug ('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug ('norcalli/nvim-colorizer.lua')
Plug ('nvim-lua/plenary.nvim')
Plug ('nvim-telescope/telescope.nvim')
Plug ('rust-lang/rust.vim')
Plug ('tree-sitter/tree-sitter-html')
Plug ('MunifTanjim/nui.nvim')
Plug ('3rd/image.nvim')
Plug ('kawre/leetcode.nvim')
Plug ('mason-org/mason-lspconfig.nvim')

vim.call('plug#end')

-- builtin plugin manager
vim.pack.add({
-- render markdown
    'https://github.com/nvim-mini/mini.nvim',            -- if you use the mini.nvim suite
    'https://github.com/nvim-mini/mini.icons',        -- if you use standalone mini plugins
    'https://github.com/nvim-tree/nvim-web-devicons', -- if you prefer nvim-web-devicons
    'https://github.com/MeanderingProgrammer/render-markdown.nvim',
})

