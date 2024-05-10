return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            css = { "prettierd" },
            scss = { "prettierd" },
            html = { "djlint" },
            lua = { "stylelua" },
            javascript = { "eslint_d", "prettierd" },
            javascriptreact = { "eslint_d", "prettierd" },
            json = { "prettierd" },
            jsonc = { "prettierd" },
            typescript = { "eslint_d", "prettierd" },
            typescriptreact = { "eslint_d", "prettierd" },
        },
        format_on_save = {
            lsp_fallback = true,
        },
    },
}
