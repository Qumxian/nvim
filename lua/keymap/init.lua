vim.g.mapleader = " " -- <LEADER> = <SPACE>


vim.keymap.set("n", "q", "<cmd>confirm q<CR>", { desc = "quit window" })
vim.keymap.set("n", "<leader>q", "<cmd>confirm qa<CR>", { desc = "quit window" })
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "save buffer" })

vim.keymap.set('n', '<leader>n', function()
	vim.diagnostic.jump({count = 1, float = true})
end, { desc = 'goto next error' })
vim.keymap.set('n', "<leader>p", function()
	vim.diagnostic.jump({count = -1, float = true})
end, { desc = 'goto prev error' })

vim.keymap.set('n', '<space>le', vim.diagnostic.open_float, { desc = 'error window' })

vim.keymap.set("n", "<leader>0", "<cmd>wincmd10 w<CR>", { desc = "jump to window 10" })
vim.keymap.set("n", "<leader>1", "<cmd>wincmd1 w<CR>", { desc = "jump to window 1" })
vim.keymap.set("n", "<leader>2", "<cmd>wincmd2 w<CR>", { desc = "jump to window 2" })
vim.keymap.set("n", "<leader>3", "<cmd>wincmd3 w<CR>", { desc = "jump to window 3" })
vim.keymap.set("n", "<leader>4", "<cmd>wincmd4 w<CR>", { desc = "jump to window 4" })
vim.keymap.set("n", "<leader>5", "<cmd>wincmd5 w<CR>", { desc = "jump to window 5" })
vim.keymap.set("n", "<leader>6", "<cmd>wincmd6 w<CR>", { desc = "jump to window 6" })
vim.keymap.set("n", "<leader>7", "<cmd>wincmd7 w<CR>", { desc = "jump to window 7" })
vim.keymap.set("n", "<leader>8", "<cmd>wincmd8 w<CR>", { desc = "jump to window 8" })
vim.keymap.set("n", "<leader>9", "<cmd>wincmd9 w<CR>", { desc = "jump to window 9" })

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  end,
})

require("keymap.nvimtree")
require("keymap.telescope")
