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

for i = 1, 9 do
  vim.keymap.set("n", "<leader>" .. i, "<cmd>" .. i .. " wincmd w<CR>",
    { desc = "jump to window " .. i })
end

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
