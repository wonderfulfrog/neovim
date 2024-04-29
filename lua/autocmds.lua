local function augroup(name)
    return vim.api.nvim_create_augroup("wf_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd({ "FileType" }, {
    group = augroup("spellcheck"),
    pattern = { "gitcommit", "markdown", "md", "mdx" },
    callback = function()
        vim.opt_local.spell = true
        vim.opt_local.wrap = true
    end,
})
