---@type vim.lsp.Config
return {
  cmd = { 'metals' },
  filetypes = { 'scala' },
  root_markers = { 'build.mill', 'build.sbt', 'build.sc', 'build.gradle', 'pom.xml' },
  init_options = {
    statusBarProvider = 'on',
    isHttpEnabled = true,
    compilerOptions = {
      snippetAutoIndent = false,
    },
  },
  capabilities = {
    workspace = {
      configuration = true,
    },
  },
}
