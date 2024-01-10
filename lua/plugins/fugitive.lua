return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<Leader>gs", vim.cmd.Git, { desc = "View `git status`" })
        vim.keymap.set("n", "gh", "<cmd>diffget //2<CR>", { desc = "Pick gitdiff on left" })
        vim.keymap.set("n", "gl", "<cmd>diffget //3<CR>", { desc = "Pick gitdiff on right" })
        vim.keymap.set("n", "<Leader>gp", ":Git push<CR>", { desc = "Run `git push`" })
    end
}
