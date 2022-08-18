-- =============================================================================
-- # symbols-outline
-- =============================================================================
local map = require('utils').map
local opts = { noremap=true, silent=true }

map('n', '<leader>a', "<cmd>SymbolsOutline<CR>", opts)

local symbol_outline_opts = {
    highlight_hovered_item = true,
    position = 'left',
    width = 20,
    show_numbers = true,
    show_relative_numbers = true,
    show_symbol_details = true,
    keymaps = { -- These keymaps can be a string or a table for multiple keys
        close = {"<Esc>", "q"},
        goto_location = "<Cr>",
        focus_location = "o",
        hover_symbol = "<C-space>",
        toggle_preview = "K",
        rename_symbol = "r",
        code_actions = "a",
    },
    lsp_blacklist = {},
    symbol_blacklist = {"Variable"},
}

require("symbols-outline").setup(symbol_outline_opts)
