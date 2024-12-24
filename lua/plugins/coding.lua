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
				graphql = "# %s",
				html = "<!-- %s -->",
				javascript = {
					"// %s", -- default commentstring when no treesitter node matches
					"/* %s */",
					call_expression = "// %s", -- specific commentstring for call_expression
					jsx_attribute = "// %s",
					jsx_element = "{/* %s */}",
					jsx_fragment = "{/* %s */}",
					spread_element = "// %s",
					statement_block = "// %s",
				},
				pug = "//- %s",
				php = "// %s",
				tsx = {
					"// %s", -- default commentstring when no treesitter node matches
					"/* %s */",
					call_expression = "// %s", -- specific commentstring for call_expression
					jsx_attribute = "// %s",
					jsx_element = "{/* %s */}",
					jsx_fragment = "{/* %s */}",
					spread_element = "// %s",
					statement_block = "// %s",
				},
				twig = "{# %s #}",
				typescript = { "// %s", "/* %s */" }, -- langs can have multiple commentstrings
			},
		},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
}
