return {
	{
		"akinsho/toggleterm.nvim",
		version = "2.*",
		opts = {
      open_mapping = [[<F9>]],
      direction = 'float',
    },
    config = function (_, opts)
      require('toggleterm').setup{
        open_mapping = opts.open_mapping,
        direction = opts.direction,
      }

      local Terminal = require('toggleterm.terminal').Terminal
      local lazygit = Terminal:new({
        cmd = "lazygit",
        hidden = true,
        direction = 'float',
      })

      function _lazygit_toggle()
        lazygit:toggle()
      end

      vim.api.nvim_set_keymap("n", "<F10>", "<cmd> lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
    end
	},
}
