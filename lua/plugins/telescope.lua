return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{
				"<Leader>ff",
				"<cmd>lua require'telescope.builtin'.git_files{}<CR>",
				desc = "Search git_files",
			},
			{
				"<Leader>fg",
				"<cmd>lua require'telescope.builtin'.live_grep{}<CR>",
				desc = "Grep git_files",
			},
			{
				"<Leader>fh",
				"<cmd>lua require'telescope.builtin'.help_tags{}<CR>",
				desc = "View help tags",
			},
			{
				"<Leader>fb",
				"<cmd>lua require'telescope.builtin'.buffers{}<CR>",
				desc = "Search buffers",
			},
			{
				"<Leader>sk",
				"<cmd>lua require'telescope.builtin'.keymaps{}<CR>",
				desc = "View keymaps",
			},
			{
				"<Leader>sR",
				"<cmd>lua require'telescope.builtin'.resume{}<CR>",
				desc = "Resume",
			},
			{
				"<Leader>st",
				"<cmd>TodoTelescope<CR>",
				desc = "Search TODOs",
			},
		},
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})

			require("telescope").load_extension("ui-select")
		end,
	},
}
