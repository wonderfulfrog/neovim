return {
   "m4xshen/hardtime.nvim",
   dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
   opts = {
        disable_mouse = true,
        disabled_keys = {
            -- Drill Sergeant Demchuk!
            ["<Up>"] = {"", "i"},
            ["<Down>"] = {"", "i"},
            ["<Left>"] = {"", "i"},
            ["<Right>"] = {"", "i"}
        }
    }
}
