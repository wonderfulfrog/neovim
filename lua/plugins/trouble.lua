return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        vim.keymap.set("n", "<Leader>tt", ":TroubleToggle<CR>", {})
    end
 }
