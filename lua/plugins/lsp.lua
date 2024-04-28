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
                "eslint_d",
                "prettierd",
                "stylua",
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
                lua_ls = {}
            }
        },
        config = function(_, opts)
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local servers = opts.servers

            for server, server_opts in pairs(servers) do
                local sopts = vim.tbl_deep_extend("force", server_opts, capabilities)
                lspconfig[server].setup(sopts)
            end

            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show signature" })
            vim.keymap.set("n", "<Leader>f", vim.lsp.buf.format, { desc = "Format buffer" })
            vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, { desc = "View code actions" })
        end,
    },
}
