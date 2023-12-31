return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                ensure_installed = { "lua", "javascript", "typescript", "tsx" },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true }
            })
        end
    },
    {
        "nvim-treesitter/nvim-treesitter-context"
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
    }
}
