local api = require("nvim-tree.api")
vim.keymap.set({"n", "v"}, "<leader>e", api.tree.open)
