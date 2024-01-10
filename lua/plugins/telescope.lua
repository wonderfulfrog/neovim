return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')

            vim.keymap.set('n', '<Leader>pp', builtin.git_files, { desc = "Search git_files" })
            vim.keymap.set('n', '<Leader>pf', builtin.find_files, { desc = "Search all files " })
            vim.keymap.set('n', '<Leader>fh', builtin.help_tags, { desc = "View help tags" })
            vim.keymap.set('n', '<Leader>gc', builtin.git_branches, { desc = "Checkout git branches" })
            vim.keymap.set('n', '<Leader>ps', function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") })
            end, { desc = "Grep entire project for string" })
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {}
                    }
                }
            }

            require("telescope").load_extension("ui-select")
        end
    }
}
