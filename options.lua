-- set vim options here (vim.<first_key>.<second_key> = value)
-- return {
--   opt = {
--     -- set to true or false etc.
--     relativenumber = false, -- sets vim.opt.relativenumber
--     number = true, -- sets vim.opt.number
--     spell = false, -- sets vim.opt.spell
--     signcolumn = "auto", -- sets vim.opt.signcolumn to auto
--     wrap = false, -- sets vim.opt.wrap
--   },
--   g = {
--     mapleader = " ", -- sets vim.g.mapleader
--     autoformat_enabled = false, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
--     cmp_enabled = true, -- enable completion at start
--     autopairs_enabled = true, -- enable autopairs at start
--     diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
--     icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
--     ui_notifications_enabled = true, -- disable notifications when toggling UI elements
--   },
-- }
-- If you need more control, you can use the function()...end notation
return function(local_vim)
        local_vim.g.mapleader = " "
        local_vim.opt.number = true
        local_vim.opt.relativenumber = false
        local_vim.opt.spell = false
        local_vim.opt.wrap = false
        local_vim.opt.shiftwidth = 4
        local_vim.opt.tabstop = 4
        local_vim.g.mapleader = " "
        local_vim.opt.list = true
        local_vim.opt.listchars = vim.opt.listchars:append("space:⋅")
local_vim.opt.listchars = vim.opt.listchars:append("trail:⋅")        
local_vim.g.cmp_enabled = true
        local_vim.g.autopairs_enabled = true
        local_vim.g.diagnostics_enabled = true
        local_vim.g.status_diagnostics_enabled = true
        local_vim.g.icons_enabled = true
        local_vim.g.ui_notifications_enabled = true
        local_vim.g.autoformat_enabled = false
        local_vim.g.indent_blankline_space_char_blankline = " "
	
        return local_vim
end
