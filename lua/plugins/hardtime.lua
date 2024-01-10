return {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {
        disable_mouse = true,
        disabled_keys = {
            -- Drill Sergeant Demchuk!
            ["<Up>"] = { "", "i" },
            ["<Down>"] = { "", "i" },
            ["<Left>"] = { "", "i" },
            ["<Right>"] = { "", "i" }
        },
        disabled_filetypes = {
            "checkhealth",
            "fugitive",
            "help",
            "lazy",
            "mason",
            "neo-tree",
            "neo-tree-popup",
            "netrw",
            "noice",
            "notify",
        }
    }
}
