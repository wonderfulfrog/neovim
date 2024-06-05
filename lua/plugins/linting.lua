return {
    "mfussenegger/nvim-lint",
    opts = {
        events = { "BufWritePost", "BufReadPost", "InsertLeave" },
        linters_by_ft = {
            html = { "djlint" },
            javascript = { "eslint" },
            typescript = { "eslint" },
            javascriptreact = { "eslint" },
            typescriptreact = { "eslint" },
        },
    },
    config = function(_, opts)
        local lint = require("lint")
        lint.linters_by_ft = opts.linters_by_ft

        local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

        vim.api.nvim_create_autocmd(opts.events, {
            group = lint_augroup,
            callback = function()
                lint.try_lint()
            end,
        })
    end,
}
