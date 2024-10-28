require 'nvim-treesitter.configs'.setup {
  ensure_installed = { 'c', 'lua', 'go', 'ruby', 'vim', 'terraform', 'typescript', 'bash' },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
