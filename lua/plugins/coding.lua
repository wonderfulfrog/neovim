return {
	{
		"tpope/vim-surround",
	},
	{
		"echasnovski/mini.pairs",
		version = false,
		opts = {
			mappings = {
				["`"] = { action = "closeopen", pair = "``", neigh_pattern = "[^\\`].", register = { cr = false } },
			},
		},
	},
	{
		"folke/ts-comments.nvim",
		event = "VeryLazy",
		opts = {
			lang = {
				pug = "//- %s",
			},
		},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
}
