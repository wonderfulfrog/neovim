vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Go to split on left" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Go to split above" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Go to split below" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Go to split on right" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines under cursor up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines under cursor down" })

vim.keymap.set("n", "n", "nzzzv", { desc = "Go to next search result and keep cursor centered on screen" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Go to previous search result and keep cursor centered on screen" })

vim.keymap.set("x", "<Leader>p", "\"_dP", { desc = "Paste without replacing clipboard contents" })

vim.keymap.set("n", "<Leader>y", "\"*y", { desc = "Yank into system clipboard" })
vim.keymap.set("v", "<Leader>y", "\"*y", { desc = "Yank into system clipboard" })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Like `ciw` for any highlighted text (doesn't have to be word)" })

vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
