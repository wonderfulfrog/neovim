return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				blade = { "blade-formatter" },
				css = { "prettierd" },
				scss = { "prettierd" },
				html = { "djlint" },
				lua = { "stylua" },
				markdown = { "prettierd" },
				javascript = { "prettierd" },
				javascriptreact = { "prettierd" },
				json = { "prettierd" },
				jsonc = { "prettierd" },
				php = { "php_cs_fixer", stop_after_first = true },
				toml = { "taplo" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				twig = { "twig-cs-fixer" },
			},
			format_on_save = {
				lsp_fallback = true,
			},
			formatters = {
				taplo = {
					args = function()
						-- conform.nvim does not parse bash envvars, so we do it ourselves
						local CONFIG_PATH = os.getenv("HOME") .. "/.config/taplo/taplo.toml"
						return {
							"format",
							"--config",
							CONFIG_PATH,
							"-",
						}
					end,
				},
				php_cs_fixer = {
					env = {
						PHP_CS_FIXER_IGNORE_ENV = "1",
					},
					args = function()
						local CONFIG_PATH = os.getenv("HOME") .. "/.config/php-cs-fixer/php-cs-fixer.php"
						return {
							"fix",
							"$FILENAME",
							"--config",
							CONFIG_PATH,
						}
					end,
				},
				-- pint = {
				-- 	args = function()
				-- 		local CONFIG_PATH = os.getenv("HOME") .. "/.config/pint/pint.json"
				-- 		return {
				-- 			"--config",
				-- 			CONFIG_PATH,
				-- 			"$FILENAME",
				-- 		}
				-- 	end,
				-- },
			},
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"blade-formatter",
				"djlint",
				"phpcs",
				"php-cs-fixer",
				"prettierd",
				"proselint",
				"stylua",
				"twig-cs-fixer",
			},
			auto_update = true,
			automatic_installation = true,
		},
	},
}
