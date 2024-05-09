return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        event = "VeryLazy",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            vim.keymap.set("n", "<Leader>ee", ":Neotree toggle<CR>", { desc = "Toggle Neotree" })
            vim.keymap.set("n", "<Leader>er", ":Neotree reveal<CR>", { desc = "Reveal file" })

            local nt = require("neo-tree")

            nt.setup({
                open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
                filesystem = {
                    filtered_items = {
                        show_hidden_count = false,
                        hide_dotfiles = false,
                        hide_gitignored = true,
                        always_show = {
                            ".env",
                            ".env.local",
                        },
                        never_show = {
                            ".git",
                            "thumbs.db",
                            ".DS_Store",
                        },
                    },
                },
                window = {
                    mappings = {
                        ["m"] = {
                            "move",
                            config = {
                                show_path = "relative",
                            },
                        },
                    },
                },
                event_handlers = {
                    {
                        event = "neo_tree_popup_input_ready",
                        handler = function()
                            -- Switch to normal inside popups by default.
                            vim.cmd.stopinsert()
                        end,
                    },
                },
            })
        end,
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {},
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            vim.keymap.set("n", "<Leader>tt", ":TroubleToggle<CR>", { desc = "Toggle Trouble" })
        end,
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {},
    },
    {
        "nvim-pack/nvim-spectre",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = { open_cmd = "noswapfile vnew" },
        keys = {
            {
                "<leader>sr",
                function()
                    require("spectre").open()
                end,
                desc = "Replace in Files (Spectre)",
            },
        },
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")

            vim.keymap.set("n", "<Leader>ff", builtin.git_files, { desc = "Search git_files" })
            vim.keymap.set("n", "<Leader>fg", builtin.live_grep, { desc = "Grep git_files" })
            vim.keymap.set("n", "<Leader>fh", builtin.help_tags, { desc = "View help tags" })
            vim.keymap.set("n", "<Leader>fb", builtin.buffers, { desc = "Search buffers" })
            vim.keymap.set("n", "<Leader>sk", builtin.keymaps, { desc = "View keymaps" })
            vim.keymap.set("n", "<Leader>sR", builtin.resume, { desc = "Resume" })
            vim.keymap.set("n", "<Leader>st", "<cmd>TodoTelescope<cr>", { desc = "Search TODOs" })
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                defaults = {
                    initial_mode = "normal",
                },
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })

            require("telescope").load_extension("ui-select")
        end,
    },
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        ---@type Flash.Config
        opts = {},
        -- stylua: ignore
        keys = {
            { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
            { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
            { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
            { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
        },
    },
    {
        "kdheepak/lazygit.nvim",
        event = "VeryLazy",
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        keys = {
            { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
        }
    },
    {
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
        opts = {
            signs = {
                add = { text = "▎" },
                change = { text = "▎" },
                delete = { text = "" },
                topdelete = { text = "" },
                changedelete = { text = "▎" },
                untracked = { text = "▎" },
            },
        }
    }
}
