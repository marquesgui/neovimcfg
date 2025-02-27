return {
  "someone-stole-my-name/yaml-companion.nvim",
  dependencies = {
    {"neovim/nvim-lspconfig"},
    {"nvim-lua/plenary.nvim"},
    {"nvim-telescope/telescope.nvim"}
  },
  config = function ()
    require("telescope").load_extension("yaml_schema")
    local cfg = require("yaml-companion").setup()
    require("lspconfig")["yamlls"].setup(cfg)

    vim.keymap.set("n", "<leader>ys", "<cmd>:Telescope yaml_schema<cr>")
  end,
}
