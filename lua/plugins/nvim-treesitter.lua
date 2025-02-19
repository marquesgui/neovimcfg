return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      'lua',
      'go',
      'vim',
      'terraform',
      'bash',
      'just'
    },
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
      disable = {"just"},
    },
    indent = { enable = true }
  },
  build = ":TSUpdate"
}
