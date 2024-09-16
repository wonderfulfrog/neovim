return {
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
		cmd = "Trouble",
		keys = {
			{
				"<Leader>tt",
				"<cmd>Trouble diagnostics toggle<CR>",
				desc = "Toggle Trouble",
			},
		},
	},
}
