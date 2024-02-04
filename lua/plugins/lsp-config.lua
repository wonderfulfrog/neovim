return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "tsserver", "html" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })

            lspconfig.tsserver.setup({
                capabilities = capabilities,
            })

            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = "Go to implementation" })
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Show signature" })
            vim.keymap.set('n', '<Leader>f', vim.lsp.buf.format, { desc = "Format buffer" })
            vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, { desc = "View code actions" })
        end
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        config = function()
            local mason_tool_installer = require("mason-tool-installer")

            mason_tool_installer.setup({
                ensure_installed = {
                    "djlint",
                    "prettierd",
                    "eslint_d",
                },
                automatic_installation = true
            })
        end
    },
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
                javascript = { "eslint_d" },
                javascriptreact = { "eslint_d" },
                json = { "prettierd" },
                jsonc = { "prettierd" },
                yaml = { "prettierd" },
                typescript = { "eslint_d" },
                typescriptreact = { "eslint_d" },
                html = { "djlint" },
                ejs = { "prettierd" },
                css = { "prettierd" },
                scss = { "prettierd" },
                graphql = { "prettierd" },
                ["_"] = { "trim_whitespace" },
            },
            format_on_save = {
                lsp_fallback = true,
            },
        },
    }
}
