return {
	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = {
			style = "storm",
			dim_inactive = true,
		},
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			default_integrations = true,
			dim_inactive = {
				enabled = true,
			},
			flavour = "macchiato",
			integrations = {
				alpha = true,
				cmp = true,
				flash = true,
				gitsigns = true,
				lsp_trouble = true,
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
				neotree = true,
				noice = true,
				telescope = {
					enabled = true,
				},
				treesitter = true,
				treesitter_context = true,
				which_key = true,
			},
		},
	},
}
