return {
    {
        'freddiehaddad/feline.nvim',
        init = function()
            local ctp_feline = require('catppuccin.groups.integrations.feline')

            ctp_feline.setup()

            require("feline").setup({
                components = ctp_feline.get(),
            })
        end
    },
    {
        "famiu/bufdelete.nvim",
        keys = {
            { "<leader>bd", "<cmd>Bdelete<cr>", desc = "Close Buffer" },
        },
    },
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        keys = {
            { "<leader>bp", "<cmd>BufferLineTogglePin<cr>", desc = "Toggle Pin" },
            { "[b",         "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
            { "]b",         "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
        },
        opts = {
            highlights = require("catppuccin.groups.integrations.bufferline").get(),
            options = {
                diagnostics = "nvim_lsp",
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "",
                        highlight = "Directory",
                        text_align = "left",
                    },
                },
            }
        }
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        opts = {
            indent = {
                char = "│",
                tab_char = "│",
            },
            scope = { enabled = false },
            exclude = {
                filetypes = {
                    "help",
                    "alpha",
                    "dashboard",
                    "neo-tree",
                    "Trouble",
                    "trouble",
                    "lazy",
                    "mason",
                    "notify",
                    "toggleterm",
                    "lazyterm",
                },
            },
        },
        main = "ibl",
    },
    {
        "echasnovski/mini.indentscope",
        opts = {
            symbol = "│",
            options = { try_as_border = true },
        },
        init = function()
            vim.api.nvim_create_autocmd("FileType", {
                pattern = {
                    "help",
                    "alpha",
                    "dashboard",
                    "neo-tree",
                    "Trouble",
                    "trouble",
                    "lazy",
                    "mason",
                    "notify",
                    "toggleterm",
                    "lazyterm",
                },
                callback = function()
                    vim.b.miniindentscope_disable = true
                end,
            })
        end,
    },
    {
        "stevearc/dressing.nvim",
        event = "VeryLazy",
        opts = {}
    },
    {
        "rcarriga/nvim-notify",
        opts = {
            timeout = 2000,
            stages = "static",
        }
    },
    {
        "MunifTanjim/nui.nvim"
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {},
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    },
    {
        "goolord/alpha-nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")

            -- https://github.com/MaximilianLloyd/ascii.nvim
            dashboard.section.header.val = {
                "                                                                          ",
                "                   ░░░  ▄▄▄▄▄▄███▄▄▄▄▄ ",
                "                    ▄███████▀▀▀▀▀▀█▓▓▓▓▓▓██▄▄▄▄ ",
                "                   ▐████▄▄    ■▓▓▓▓▀▀▀▀▀▀▀▀▀█████■                ██▄ ",
                "                    ▀█████████▄▄▄▄▄███████████▀▀             ▄▄  ████░▄▄▄ ",
                "    ▐██▄            ▄▄▄▄▄▄▀▀▀▀▀▀▀▀▓▓▓▀░░░▄▄▄   ▄▄          ▐███▏▐██▓▄████ ",
                " ▄█▓░███▓ ▄▓▓▓▄▄████████████▄█████▄ ▄█████████▐███         ████▏██▀████▀ ",
                " ▐███▄███░▀████████▀▀   ▀▓█████▓▀██▓████▀▀  ███████      ▄█████ ■ ██▀ ",
                "  ▀████▓██ ▐██████       ▐████   ▐████▀    ▒████████▄  ▄███████ ",
                "    ▀███    ▀▀█████▄    ▄████   ▄████▏    ▄█████▀█████████▀ ███ ",
                "               ▀████▄ ▄████▐██▄███████▄▄▄███▓██▏ ▀██████▀   ▐██ ",
                "                ▀████████▀  ▀████▀▀████████▀▐██▏  ▀██▀▀     ▐██▏ ",
                "          ▓▓█    ▀████ ▀            ■███▄▄  ███              ██▏ ",
                "          ▀▀▀      ▀▀                ▀█████▄▓▀               ██▏ ",
                "            ░░     ▄████████████▄▄▄▄▄▄▄ ▀▀▀████▄▄   ▒▒▒      ██▏  ▄▄ ",
                "                   ▀▀████▀▀▀▀▀▀████████████▄▄▓▓▓███▄    ░░░░ ▐█▏ ■▀▀ ",
                "                                      ▀▀▀▀▀▀█████▓▓▓▓█▄▄     ▐█ ",
                "                                                ▄█████████▄▄ ",
                "                                       ▄▄▄▄████████▀▀▀▀▀▀▀███▏ ",
                "                                   ▄▄█████▀▀▀▀              ▀■ ",
                "                                ▄███▀▀▀▀ ",
                "                              ■▀▀ ",
                "                                                                          ",
            }

            dashboard.section.buttons.val = {
                dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
                dashboard.button("SPC ee", "  > File explorer", "<cmd>Neotree<CR>"),
                dashboard.button("q", "  > Quit", "<cmd>qa<CR>"),
            }

            alpha.setup(dashboard.opts)
        end,
    }
}
