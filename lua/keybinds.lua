vim.keymap.set("n", "<C-h>", "<C-w><C-h>", {})
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", {})
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", {})
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", {})

-- Move visual blocks around using J/K (up/down)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {})

-- Keep search terms in the middle of the screen
vim.keymap.set("n", "n", "nzzzv", {})
vim.keymap.set("n", "N", "Nzzzv", {})

-- Paste without replacing clipboard contents
vim.keymap.set("x", "<Leader>p", "\"_dP", {})

-- Yank into system clipboard
vim.keymap.set("n", "<Leader>y", "\"*y", {})
vim.keymap.set("v", "<Leader>y", "\"*y", {})

-- Like ciw on the text under the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
