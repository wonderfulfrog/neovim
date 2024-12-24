return {
	{
		"lewis6991/gitsigns.nvim",
		event = "VeryLazy",
		opts = {
			signs = {
				add = { text = "▎" },
				change = { text = "▎" },
				delete = { text = "" },
				topdelete = { text = "" },
				changedelete = { text = "▎" },
				untracked = { text = "▎" },
			},
			signs_staged = {
				add = { text = "▎" },
				change = { text = "▎" },
				delete = { text = "" },
				topdelete = { text = "" },
				changedelete = { text = "▎" },
			},
		},
		keys = {
			{ "<leader>ghs", ":Gitsigns stage_hunk<CR>", desc = "Stage hunk", mode = { "n", "v" } },
			{ "<leader>ghr", ":Gitsigns reset_hunk<CR>", desc = "Reset hunk", mode = { "n", "v" } },
		},
	},
}
