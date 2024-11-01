require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { "lua_ls", "gopls", "terraformls", "tflint" },
  automatic_installation = true
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local lsp = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- lua
lsp.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

-- go
lsp.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

-- terraform
lsp.tflint.setup{}
lsp.terraformls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.tf", "*.tfvars"},
  callback = function()
    vim.lsp.buf.format()
  end,
})
