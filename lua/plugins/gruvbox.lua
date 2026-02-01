require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = false,
  bold = true,
  italic = {
    strings = false,
    comments = false,
    emphasis = false,
    operators = false,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {
    IlluminatedWordRead = {cterm=underline, gui=underline},
    IlluminatedWordText = {cterm=underline, gui=underline},
    IlluminatedWordWrite= {cterm=underline, gui=underline},
    Whitespace = {fg="#30735F"},
    ["Comment"] = { link = "Gruvboxfg2" },
    ["cOperator"] = { link = "GruvboxBlue" },
    ["cStructure"] = { link = "GruvboxRed" },
    ["cStorageClass"] = { link = "GruvboxRed" },
    ["cBlock"] = { link = "Gruvboxfg0" },
    ["@lsp.type.operator.c"] = { link = "cBlack" },
    ["@lsp.type.property.c"] = { link = "cBlock" },
    ["@lsp.type.function.c"] = { link = "cBlock" },
    ["@lsp.type.parameter.c"] = { link = "cBlock" },
  },
  dim_inactive = false,
  transparent_mode = true,
})

vim.cmd("colorscheme gruvbox")

