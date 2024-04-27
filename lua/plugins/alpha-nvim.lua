return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- https://github.com/MaximilianLloyd/ascii.nvim
		dashboard.section.header.val = {
			"                                                                          ",
			"                   ░░░  ▄▄▄▄▄▄███▄▄▄▄▄ ",
			"                    ▄███████▀▀▀▀▀▀█▓▓▓▓▓▓██▄▄▄▄ ",
			"                   ▐████▄▄    ■▓▓▓▓▀▀▀▀▀▀▀▀▀█████■                ██▄ ",
			"                    ▀█████████▄▄▄▄▄███████████▀▀             ▄▄  ████░▄▄▄ ",
			"    ▐██▄            ▄▄▄▄▄▄▀▀▀▀▀▀▀▀▓▓▓▀░░░▄▄▄   ▄▄          ▐███▏▐██▓▄████ ",
			" ▄█▓░███▓ ▄▓▓▓▄▄████████████▄█████▄ ▄█████████▐███         ████▏██▀████▀ ",
			" ▐███▄███░▀████████▀▀   ▀▓█████▓▀██▓████▀▀  ███████      ▄█████ ■ ██▀ ",
			"  ▀████▓██ ▐██████       ▐████   ▐████▀    ▒████████▄  ▄███████ ",
			"    ▀███    ▀▀█████▄    ▄████   ▄████▏    ▄█████▀█████████▀ ███ ",
			"               ▀████▄ ▄████▐██▄███████▄▄▄███▓██▏ ▀██████▀   ▐██ ",
			"                ▀████████▀  ▀████▀▀████████▀▐██▏  ▀██▀▀     ▐██▏ ",
			"          ▓▓█    ▀████ ▀            ■███▄▄  ███              ██▏ ",
			"          ▀▀▀      ▀▀                ▀█████▄▓▀               ██▏ ",
			"            ░░     ▄████████████▄▄▄▄▄▄▄ ▀▀▀████▄▄   ▒▒▒      ██▏  ▄▄ ",
			"                   ▀▀████▀▀▀▀▀▀████████████▄▄▓▓▓███▄    ░░░░ ▐█▏ ■▀▀ ",
			"                                      ▀▀▀▀▀▀█████▓▓▓▓█▄▄     ▐█ ",
			"                                                ▄█████████▄▄ ",
			"                                       ▄▄▄▄████████▀▀▀▀▀▀▀███▏ ",
			"                                   ▄▄█████▀▀▀▀              ▀■ ",
			"                                ▄███▀▀▀▀ ",
			"                              ■▀▀ ",
			"                                                                          ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("SPC ee", "  > File explorer", "<cmd>Neotree<CR>"),
			dashboard.button("q", "  > Quit", "<cmd>qa<CR>"),
		}

		alpha.setup(dashboard.opts)
	end,
}
