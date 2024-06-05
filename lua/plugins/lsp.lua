return {
    {
        "williamboman/mason.nvim",
        opts = {},
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "tsserver",
                "html",
            }
        }
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        opts = {
            ensure_installed = {
                "djlint",
                "eslint",
                "eslint_d",
                "prettierd",
                "stylua",
                "vale",
            },
            automatic_installation = true,
        }
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
                tsserver = {},
                lua_ls = {},
            }
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
