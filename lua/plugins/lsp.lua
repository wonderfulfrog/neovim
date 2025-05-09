return {
	-- Locking mason.nvim and mason-lspconfig.nvim to v1
	-- See -- see https://github.com/LazyVim/LazyVim/issues/6039
	{
		"williamboman/mason.nvim",
		version = "^1.0.0",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		version = "^1.0.0",
		dependencies = { "neovim/nvim-lspconfig" },
		opts = {
			automatic_enable = false,
			ensure_installed = {
				"cssls",
				"eslint",
				"html",
				"lua_ls",
				"phpactor", -- php
				"taplo", -- .toml
				"ts_ls",
				"twiggy_language_server", -- .twig
				"yamlls", -- .yml
			},
		},
	},
	-- lspconfig should be the last step.
	{
		"neovim/nvim-lspconfig",
		event = "VeryLazy",
		opts = {
			servers = {
				cssls = {},
				eslint = {
					on_attach = function(_, bufnr)
						vim.api.nvim_create_autocmd("BufWritePre", {
							buffer = bufnr,
							command = "EslintFixAll",
						})
					end,
				},
				html = {},
				lua_ls = {},
				phpactor = {},
				taplo = {},
				ts_ls = {},
				twiggy_language_server = {},
				yamlls = {},
			},
		},
		config = function(_, opts)
			local lspconfig = require("lspconfig")

			local servers = opts.servers

			for server, server_opts in pairs(servers) do
				lspconfig[server].setup(server_opts)
			end

			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show signature" })
			vim.keymap.set("n", "<Leader>f", vim.lsp.buf.format, { desc = "Format buffer" })
			vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, { desc = "View code actions" })
			vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename" })
		end,
	},
}
