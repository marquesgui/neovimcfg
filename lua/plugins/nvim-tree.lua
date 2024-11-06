return {
  {
    "nvim-tree/nvim-tree.lua",
    opts = {},
    init = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      vim.opt.termguicolors = true
      vim.keymap.set('n','<leader>n',':NvimTreeFindFileToggle<CR>')
    end,
  },
  {
    "nvim-tree/nvim-web-devicons",
    opts = {}
  }
}
