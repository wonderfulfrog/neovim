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
			typescript = { "prettierd" },
			typescriptreact = { "prettierd" },
		},
		format_on_save = {
			lsp_fallback = true,
		},
	},
}
