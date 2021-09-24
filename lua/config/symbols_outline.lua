-- =============================================================================
-- # symbols-outline
-- =============================================================================
local map = require('utils').map
local opts = { noremap=true, silent=true }

map('n', '<leader>T', "<cmd>SymbolsOutline<CR>", opts)

vim.g.symbols_outline = {
    highlight_hovered_item = true,
    position = 'left',
    width = 25,
    show_numbers = true,
    show_relative_numbers = true,
    show_symbol_details = true,
    preview_bg_highlight = 'Pmenu',
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
    symbol_blacklist = {},
}
