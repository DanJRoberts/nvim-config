require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "sumneko_lua", "gopls" }
})

local on_attach = function (_, _ )
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- LSPs will fail to install if unzip is not installed on system

-- LUA LSP config
require("lspconfig").sumneko_lua.setup{
  on_attach = on_attach,
  capabilities = capabilities,      -- required for completion

  -- tell LSP that 'vim' is part of the global name space to supress 
  -- 'Undefined global `vim`' warnings, in nvim configs
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}

require('lspconfig').gopls.setup{
  on_attach = on_attach,
  capabilities = capabilities,      -- required for completion
}

