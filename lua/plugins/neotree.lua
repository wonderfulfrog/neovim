return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		event = "VeryLazy",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		keys = {
			{ "<Leader>ee", "<cmd>Neotree toggle<CR>", desc = "Toggle Neotree" },
			{ "<Leader>er", "<cmd>Neotree reveal<CR>", desc = "Reveal file" },
		},
		opts = {
			open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
			filesystem = {
				filtered_items = {
					show_hidden_count = false,
					hide_dotfiles = false,
					hide_gitignored = true,
					always_show = {
						".env",
						".env.local",
					},
					never_show = {
						".git",
						"thumbs.db",
						".DS_Store",
					},
				},
			},
		},
	},
}
