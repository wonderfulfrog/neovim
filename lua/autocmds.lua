vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "gitcommit", "markdown", "md", "mdx" },
    callback = function()
        vim.opt_local.spell = true
        vim.opt_local.wrap = true
    end
})
