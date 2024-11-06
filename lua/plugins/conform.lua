return {
	"stevearc/conform.nvim",
	opts = {
		default_format_opts = {
			timeout = 3000,
			async = false,
			quiet = false,
			lsp_format = "fallback",
		},
		formatters_by_ft = {
			lua = { "stylua" },
		},
	},
	keys = {
		{
			"<leader>fmt",
			function()
				require("conform").format()
			end,
			mode = { "n", "v" },
			desc = "Format",
		},
	},
}
