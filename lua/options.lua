vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.belloff = "all"
vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.swapfile = false

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.copyindent = true

vim.opt.scrolloff = 2
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.cmdheight = 2

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.fillchars = {
    foldopen = "",
    foldclose = "",
    -- fold = "⸱",
    fold = " ",
    foldsep = " ",
    diff = "╱",
    eob = " ",
}

vim.opt.foldlevel = 99
vim.opt.foldmethod = "indent"

vim.opt.termguicolors = true
