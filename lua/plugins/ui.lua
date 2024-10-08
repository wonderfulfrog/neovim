return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			options = {
				icons_enabled = true,
				theme = "tokyonight",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_c = {
					{
						"filename",
						file_status = true,
						path = 1,
						symbols = {
							modified = "●",
						},
					},
				},
				lualine_x = { "filetype" },
			},
		},
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		opts = {
			indent = {
				char = "│",
				tab_char = "│",
			},
			scope = { enabled = false },
			exclude = {
				filetypes = {
					"help",
					"alpha",
					"dashboard",
					"neo-tree",
					"Trouble",
					"trouble",
					"lazy",
					"mason",
					"notify",
					"toggleterm",
					"lazyterm",
				},
			},
		},
		main = "ibl",
	},
	{
		"echasnovski/mini.indentscope",
		opts = {
			symbol = "│",
			options = { try_as_border = true },
		},
		init = function()
			vim.api.nvim_create_autocmd("FileType", {
				pattern = {
					"help",
					"alpha",
					"dashboard",
					"neo-tree",
					"Trouble",
					"trouble",
					"lazy",
					"mason",
					"notify",
					"toggleterm",
					"lazyterm",
				},
				callback = function()
					vim.b.miniindentscope_disable = true
				end,
			})
		end,
	},
	{
		"rcarriga/nvim-notify",
		opts = {
			timeout = 2000,
			stages = "static",
		},
	},
	{
		"MunifTanjim/nui.nvim",
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			-- https://github.com/MaximilianLloyd/ascii.nvim
			dashboard.section.header.val = {
				"                                                                           ",
				"                   ░░░  ▄▄▄▄▄▄███▄▄▄▄▄                                     ",
				"                    ▄███████▀▀▀▀▀▀█▓▓▓▓▓▓██▄▄▄▄                            ",
				"                   ▐████▄▄    ■▓▓▓▓▀▀▀▀▀▀▀▀▀█████■                ██▄      ",
				"                    ▀█████████▄▄▄▄▄███████████▀▀             ▄▄  ████░▄▄▄  ",
				"    ▐██▄            ▄▄▄▄▄▄▀▀▀▀▀▀▀▀▓▓▓▀░░░▄▄▄   ▄▄          ▐███▏▐██▓▄████  ",
				" ▄█▓░███▓ ▄▓▓▓▄▄████████████▄█████▄ ▄█████████▐███         ████▏██▀████▀   ",
				" ▐███▄███░▀████████▀▀   ▀▓█████▓▀██▓████▀▀  ███████      ▄█████ ■ ██▀      ",
				"  ▀████▓██ ▐██████       ▐████   ▐████▀    ▒████████▄  ▄███████            ",
				"    ▀███    ▀▀█████▄    ▄████   ▄████▏    ▄█████▀█████████▀ ███            ",
				"               ▀████▄ ▄████▐██▄███████▄▄▄███▓██▏ ▀██████▀   ▐██            ",
				"                ▀████████▀  ▀████▀▀████████▀▐██▏  ▀██▀▀     ▐██▏           ",
				"          ▓▓█    ▀████ ▀            ■███▄▄  ███              ██▏           ",
				"          ▀▀▀      ▀▀                ▀█████▄▓▀               ██▏           ",
				"            ░░     ▄████████████▄▄▄▄▄▄▄ ▀▀▀████▄▄   ▒▒▒      ██▏  ▄▄       ",
				"                   ▀▀████▀▀▀▀▀▀████████████▄▄▓▓▓███▄    ░░░░ ▐█▏ ■▀▀       ",
				"                                      ▀▀▀▀▀▀█████▓▓▓▓█▄▄     ▐█            ",
				"                                                ▄█████████▄▄               ",
				"                                       ▄▄▄▄████████▀▀▀▀▀▀▀███▏             ",
				"                                   ▄▄█████▀▀▀▀              ▀■             ",
				"                                ▄███▀▀▀▀                                   ",
				"                              ■▀▀                                          ",
				"                                                                           ",
			}

			dashboard.section.buttons.val = {
				dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
				dashboard.button("SPC ee", "  > File explorer", "<cmd>Neotree<CR>"),
				dashboard.button("q", "  > Quit", "<cmd>qa<CR>"),
			}

			alpha.setup(dashboard.opts)
		end,
	},
}
