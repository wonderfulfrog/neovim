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
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {},
	},
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
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
	{
		"nvim-pack/nvim-spectre",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { open_cmd = "noswapfile vnew" },
		keys = {
			{
				"<leader>sr",
				function()
					require("spectre").open()
				end,
				desc = "Replace in Files (Spectre)",
			},
		},
	},
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
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {},
        -- stylua: ignore
        keys = {
            { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
            { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
            { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
            { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
        },
	},
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
		},
	},
}
