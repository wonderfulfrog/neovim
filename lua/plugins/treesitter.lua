return {
	{
		"nvim-treesitter/nvim-treesitter",
		version = false,
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"lua",
				"javascript",
				"typescript",
				"tsx",
				"htmldjango",
				"html",
				"jsonc",
				"json",
				"jsdoc",
				"markdown",
				"markdown_inline",
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
		"nvim-treesitter/nvim-treesitter-context",
		opts = {
			max_lines = 2,
		},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {
			disable_filetype = { "TelescopePrompt" },
		},
	},
}
