vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>", { desc = "Go to split on left" })
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>", { desc = "Go to split above" })
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>", { desc = "Go to split below" })
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>", { desc = "Go to split on right" })

vim.keymap.set("n", "<leader>|", "<C-w>v", { desc = "Split window right" })
vim.keymap.set("n", "<leader>-", "<C-w>s", { desc = "Split window below" })
vim.keymap.set("n", "<leader>wd", "<C-w>c", { desc = "Delete window" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines under cursor up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines under cursor down" })

vim.keymap.set("n", "n", "nzzzv", { desc = "Go to next search result and keep cursor centered on screen" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Go to previous search result and keep cursor centered on screen" })

vim.keymap.set("x", "<Leader>p", '"_dP', { desc = "Paste without replacing clipboard contents" })

vim.keymap.set("n", "<Leader>y", '"*y', { desc = "Yank into system clipboard" })
vim.keymap.set("v", "<Leader>y", '"*y', { desc = "Yank into system clipboard" })

vim.keymap.set("t", "<C-h>", "<cmd>wincmd h<CR>", { desc = "Go to split on left (Terminal)" })
vim.keymap.set("t", "<C-j>", "<cmd>wincmd j<CR>", { desc = "Go to split above (Terminal)" })
vim.keymap.set("t", "<C-k>", "<cmd>wincmd k<CR>", { desc = "Go to split below (Terminal)" })
vim.keymap.set("t", "<C-l>", "<cmd>wincmd l<CR>", { desc = "Go to split on right (Terminal)" })
