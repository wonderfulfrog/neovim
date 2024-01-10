return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.keymap.set("n", "<Leader>nn", ":Neotree<CR>", { desc = "Open Neotree" })

        local nt = require("neo-tree")

        nt.setup({
            filesystem = {
                filtered_items = {
                    show_hidden_count = false,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                    always_show = {
                        ".env"
                    },
                    never_show = {
                        ".git",
                        "thumbs.db",
                        ".DS_Store"
                    }
                },
            }
        })
    end
}
