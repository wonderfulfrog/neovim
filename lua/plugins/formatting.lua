return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			css = { "prettierd" },
			scss = { "prettierd" },
			html = { "djlint" },
			lua = { "stylua" },
			markdown = { "prettierd" },
			javascript = { "prettierd" },
			javascriptreact = { "prettierd" },
			json = { "prettierd" },
			jsonc = { "prettierd" },
			toml = { "taplo" },
			typescript = { "prettierd" },
			typescriptreact = { "prettierd" },
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
		},
	},
}
