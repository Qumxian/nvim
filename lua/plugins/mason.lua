vim.lsp.config("*", {
  capabilities = vim.lsp.protocol.make_client_capabilities()
})

local servers = {
  "bashls",
  "clangd",
  "lua_ls",
  "vimls",
  "pyright"
}

require("mason").setup()
require("mason-lspconfig").setup {
	ensure_installed = servers
}

vim.diagnostic.config({

  -- virtual_lines = { current_line = true, },
  virtual_text = { current_line = true, },
})

vim.lsp.enable({ "metals" })

