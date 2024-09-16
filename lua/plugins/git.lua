return {
	{
		"kdheepak/lazygit.nvim",
		event = "VeryLazy",
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{ "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
		},
	},
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
			{ "<leader>ghb", ":Gitsigns blame_line<CR>", desc = "Blame line" },
			{ "<leader>ghs", ":Gitsigns stage_hunk<CR>", desc = "Stage hunk", mode = { "n", "v" } },
			{ "<leader>ghr", ":Gitsigns reset_hunk<CR>", desc = "Reset hunk", mode = { "n", "v" } },
		},
	},
}
