return {
	{
		"nvim-treesitter/nvim-treesitter",
		version = false,
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"html",
				"htmldjango",
				"javascript",
				"jsdoc",
				"json",
				"jsonc",
				"lua",
				"markdown",
				"markdown_inline",
				"pug",
				"tsx",
				"typescript",
				"vim",
				"vimdoc",
			},
			highlight = { enable = true },
			indent = { enable = true },
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		event = "VeryLazy",
		ft = {
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"html",
		},
		opts = {},
	},
}
