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

-- vim.api.nvim_create_autocmd({ "FileType" }, {
--     group = augroup("close_with_q"),
--     pattern = { "fugitive", "git", "gitcommit" },
--     callback = function(event)
--         vim.bo[event.buf].buflisted = false
--         vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
--     end
-- })
