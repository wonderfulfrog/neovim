return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"cssls",
				"eslint",
				"html",
				"lua_ls",
				"taplo", -- .toml
				"tsserver",
				"yamlls", -- .yml
			},
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"djlint",
				"prettierd",
				"proselint",
				"stylua",
			},
			auto_update = true,
			automatic_installation = true,
		},
	},
	-- lspconfig should be the last step.
	{
		"neovim/nvim-lspconfig",
		event = "VeryLazy",
		dependencies = {
			"mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
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
				taplo = {},
				tsserver = {},
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
