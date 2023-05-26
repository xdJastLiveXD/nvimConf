return {
    -- You can also add new plugins here as well:
    -- Add plugins, the lazy syntax
    "andweeb/presence.nvim",
    {
        "ray-x/lsp_signature.nvim",
        event = "BufRead",
        config = function()
            require("lsp_signature").setup()
        end,
    },
    { "ellisonleao/gruvbox.nvim",  priority = 1000 },
    { "NMAC427/guess-indent.nvim", enabled = false },
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()

        end,
    },
    { "romgrk/fzy-lua-native" },
    {
        "gelguy/wilder.nvim", lazy = false,
        config = function()
            local wilder = require('wilder')
            wilder.setup({ modes = { ':', '/', '?' } })
            -- Disable Python remote plugin
            wilder.set_option('renderer', wilder.popupmenu_renderer(
                wilder.popupmenu_border_theme({
                    highlights = {
                        border = 'Normal', -- highlight to use for the border
                    },
                    -- 'single', 'double', 'rounded' or 'solid'
                    -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
                    border = 'rounded',
                })
            ))
        end,
    },
    {
        "cappyzawa/trim.nvim",
        lazy = false,
        config = function()
            require("trim").setup({})
        end
    }
}
