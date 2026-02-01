--  |================== bascal config ==================/
vim.g.t_ut = ""
vim.opt.autoread = true
vim.opt.encoding = "utf-8"
vim.opt.autochdir = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.updatetime = 100
vim.opt.shortmess:append("c")
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.list = true
vim.opt.listchars = { tab = "> ", trail = "-" }
vim.opt.scrolloff = 4
vim.opt.ttimeoutlen = 0
vim.opt.timeout = false
vim.opt.viewoptions = { "cursor", "folds", "slash", "unix" }
vim.opt.wrap = true
vim.opt.textwidth = 0
vim.opt.indentexpr = ""
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.foldenable = true
vim.opt.formatoptions:remove("tc")
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.showmode = false
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
vim.opt.completeopt = { "longest", "noinsert", "menuone", "noselect", "preview" }
vim.opt.clipboard:append("unnamedplus")
vim.opt.cmdheight = 1

--  vim.opt.expandtab
vim.opt.cindent = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.tabstop = 8
vim.opt.shiftwidth = 8
vim.opt.softtabstop = 8
vim.opt.smarttab = true
vim.opt.cino:append("L0")

--  mouse behavior

--  No annoying sound on errors
vim.g.t_vb = ""
vim.opt.errorbells = false
vim.opt.visualbell = false
vim.opt.tm = 500

--  |=================== plugin manager ===================|
require("config.vimplug")
require("plugins")

-- |=================== key mapping ===================|
require("keymap")
