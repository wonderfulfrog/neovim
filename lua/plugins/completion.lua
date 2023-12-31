return {
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")

            cmp.setup({
                -- Highlights the first result always
                completion = {
                    completeopt = "menu,menuone,noinsert"
                },

                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-o>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<Tab>"] = cmp.mapping(function (fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        else
                            fallback()
                        end
                    end, { "i" }),
                    ["<S-Tab>"] = cmp.mapping(function (fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        else
                            fallback()
                        end
                    end, { "i" }),
                    ["<CR>"] = cmp.mapping.confirm({ select = true })
                }),

                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end
                },

                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" }
                }, {
                        { name = "buffer" }
                    })
            })
        end
    },
    {
        "hrsh7th/cmp-nvim-lsp"
    },
    {
        "L3MON4D3/LuaSnip"
    }
}
