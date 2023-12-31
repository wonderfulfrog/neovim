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
                ensure_installed = { "lua_ls", "tsserver", "eslint" }
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
                capabilities = capabilities
            })

            -- Runs :EslintFixAll when saving
            lspconfig.eslint.setup({
                on_attach = function(_, bufnr)
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        buffer = bufnr,
                        command = "EslintFixAll",
                    })
                end
            })

            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<Leader>f', vim.lsp.buf.format, {})
            vim.keymap.set('n', '<Leader>vca', vim.lsp.buf.code_action, {})
        end
    }
}
