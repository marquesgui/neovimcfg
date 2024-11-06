return {
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				icons_enabled = true,
				theme = "catppuccin-mocha",
				globalstatus = true,
			},
			sections = {
				lualine_a = {
					{
						"filename",
						path = 1,
					},
				},
			},
		},
	},
}
