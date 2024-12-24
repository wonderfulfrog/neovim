vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>", { desc = "Go to split on left" })
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>", { desc = "Go to split above" })
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>", { desc = "Go to split below" })
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>", { desc = "Go to split on right" })

vim.keymap.set("n", "<leader>|", "<C-w>v", { desc = "Split window right" })
vim.keymap.set("n", "<leader>-", "<C-w>s", { desc = "Split window below" })
vim.keymap.set("n", "<leader>wd", "<C-w>c", { desc = "Delete window" })

vim.keymap.set("n", "<Leader>y", '"*y', { desc = "Yank into system clipboard" })
vim.keymap.set("v", "<Leader>y", '"*y', { desc = "Yank into system clipboard" })

