return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')

            vim.keymap.set('n', '<Leader>pp', builtin.git_files, {})
            vim.keymap.set('n', '<Leader>pf', builtin.find_files, {})
            vim.keymap.set('n', '<Leader>fh', builtin.help_tags, {})
            vim.keymap.set('n', '<Leader>ps', function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") })
            end)
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
