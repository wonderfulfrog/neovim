return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.keymap.set("n", "<Leader>nn", ":Neotree toggle<CR>", { desc = "Toggle Neotree" })

        local nt = require("neo-tree")

        nt.setup({
            enable_normal_mode_for_inputs = true,
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
            },
            window = {
                mappings = {
                    ["m"] = {
                        "move",
                        config = {
                            show_path = "relative"
                        }
                    },
                }
            }
        })
    end
}
