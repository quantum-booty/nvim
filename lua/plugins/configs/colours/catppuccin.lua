local is_windows = require('utils').is_windows
-- " =============================================================================
-- " # Catppuccin
-- " =============================================================================
require("catppuccin").setup({
    transparent_background = false,
    term_colors = true,
    compile = {
        enabled = true,
        path = vim.fn.stdpath "cache" .. "/catppuccin",
    },
    no_italic = is_windows(),
    styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    integrations = {
        treesitter = true,
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = {},
                hints = {},
                warnings = {},
                information = {},
            },
            underlines = {
                errors = { "underline" },
                hints = { "underline" },
                warnings = { "underline" },
                information = { "underline" },
            },
        },
        lsp_trouble = true,
        cmp = true,
        gitsigns = true,
        telescope = true,
        nvimtree = {
            enabled = true,
            show_root = true,
            transparent_panel = false,
        },
        dap = {
            enabled = true,
            enable_ui = true,
        },
        indent_blankline = {
            enabled = true,
            colored_indent_levels = true,
        },
        neogit = false,
        bufferline = true,
        lightspeed = true,
        ts_rainbow = true,
        symbols_outline = true,
    },
    color_overrides = {
        latte = {
            base = "#E1EEF5",
        },
        mocha = {
            base = "#000000",
        },
    },
    highlight_overrides = {
        latte = function(latte)
            return {
                NvimTreeNormal = { bg = "#D1E5F0" },
            }
        end,
        mocha = function(mocha)
            return {
                NvimTreeNormal = { bg = mocha.none },
                CmpBorder = { fg = mocha.surface2 },
            }
        end,
    },
})
