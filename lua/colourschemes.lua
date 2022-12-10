local is_windows = require('utils').is_windows
-- " =============================================================================
-- " # Srcery
-- " =============================================================================
-- vim.g.srcery_italic = 1
-- vim.g.srcery_bold = 1
-- vim.g.srcery_inverse_matches = 1
-- vim.g.srcery_inverse = 1
-- vim.g.srcery_italic_types = 1
-- vim.g.srcery_inverse_match_paren = 0

-- " =============================================================================
-- " # Tokyo Night
-- " =============================================================================

-- " =============================================================================
-- " # Nightfox
-- " =============================================================================
local nightfox = require('nightfox')

nightfox.setup({
    options = {
        dim_inactive = true,
        transparent = false,
        terminal_colors = true,
        styles = {
            comments = "", -- change style of comments to be italic
            keywords = "", -- change style of keywords to be bold
            functions = "bold" -- styles can be a comma separated list
        },
        inverse = {
            match_paren = false,
            search = true,
            visual = true,
        },
    },
    specs = {
        all = {
            telescope = {
                bg_alt = "bg2",
                bg = "bg1",
                fg = "fg1",
                green = "green",
                red = "red",
            },
        },
    },
    groups = {
        all = {
            WinBar = { fg = "fg2", bg = "bg1" },
            WinBarNC = { fg = "fg3", bg = "bg0" },
            HighlightURL = { style = "underline" },
            MiniIndentscopeSymbol = { link = "PreProc" },
            NormalFloat = { link = "Normal" },
            TelescopeBorder = { fg = "telescope.bg_alt", bg = "telescope.bg" },
            TelescopeNormal = { bg = "telescope.bg" },
            TelescopePreviewBorder = { fg = "telescope.bg", bg = "telescope.bg" },
            TelescopePreviewTitle = { fg = "telescope.bg", bg = "telescope.green" },
            TelescopePromptBorder = { fg = "telescope.bg_alt", bg = "telescope.bg_alt" },
            TelescopePromptNormal = { fg = "telescope.fg", bg = "telescope.bg_alt" },
            TelescopePromptPrefix = { fg = "telescope.red", bg = "telescope.bg_alt" },
            TelescopePromptTitle = { fg = "telescope.bg", bg = "telescope.red" },
            TelescopeResultsBorder = { fg = "telescope.bg", bg = "telescope.bg" },
            TelescopeResultsTitle = { fg = "telescope.bg", bg = "telescope.bg" },
        },
    },
})

-- " =============================================================================
-- " # Gruvbox
-- " =============================================================================
vim.g.airline_theme = 'gruvbox'
vim.g.gruvbox_contrast_dark = 'soft'
vim.g.gruvbox_contrast_light = 'soft'
vim.g.gruvbox_italic = 1
vim.g.gruvbox_invert_selection = 1

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

-- =============================================================================
-- # one dark
-- =============================================================================
-- local onedark = require('onedark')
-- onedark.setup({
--     style = 'darker',
--     transparent = false,
--     toggle_style_key = '<nop>',
--     highlights = {
--         TSDefinitionUsage = { fg = 'BLACK', bg = '#DCD9CD' },
--     }
-- }
-- )



-- =============================================================================
-- # one nord
-- =============================================================================
-- require('onenord').setup({
--     borders = true, -- Split window borders
--     bold = {
--         functions = true, -- Bold functions
--     },
--     custom_highlights = {
--         TSDefinitionUsage = { style = "reverse" },
--         Visual = { style = "reverse" },
--     },
-- })


-- =============================================================================
-- # rose pine
-- =============================================================================
require('rose-pine').setup({
    dark_variant = 'moon',
    disable_italics = true,
})


-- =============================================================================
-- # kanagawa
-- =============================================================================
require('kanagawa').setup({
    commentStyle = { italic = false },
    functionStyle = { italic = false },
    keywordStyle = { italic = false },
    variablebuiltinStyle = { italic = false },
    dimInactive = true, -- dim inactive window `:h hl-NormalNC`
    globalStatus = true, -- adjust window separators highlight for laststatus=3
    overrides = {
        TSDefinitionUsage = { fg = 'BLACK', bg = '#DCD9CD' },
    }
})


-- vim.cmd.colorscheme('srcery')
-- vim.cmd([[set background=dark | colorscheme gruvbox]])
-- vim.cmd([[set background=light | colorscheme gruvbox]])
-- onedark.load()
-- vim.cmd.colorscheme('onenord')
-- vim.cmd.colorscheme('rose-pine')
-- vim.o.background = "light"; vim.cmd.colorscheme('kanagawa')
-- vim.o.background = "dark"; vim.cmd.colorscheme('kanagawa')
-- vim.o.background = ""; require('kanagawa').setup({theme = "dragon"}); vim.cmd.colorscheme('kanagawa')
-- vim.cmd.colorscheme('tokyodark')

vim.cmd.colorscheme "oxocarbon"

-- vim.cmd.colorscheme('nightfox')
-- vim.cmd.colorscheme('terafox')
-- vim.cmd.colorscheme('nordfox')
-- vim.cmd.colorscheme('duskfox')
-- vim.cmd.colorscheme('dayfox')
-- vim.cmd.colorscheme('dawnfox')
-- vim.cmd.colorscheme('carbonfox')

-- vim.cmd.colorscheme('catppuccin-macchiato') -- default
-- vim.cmd.colorscheme('catppuccin-latte') -- light
-- vim.cmd.colorscheme('catppuccin-frappe') -- nord
-- vim.cmd.colorscheme('catppuccin-mocha') -- deep

-- vim.cmd([[ let g:tokyonight_style = 'storm' | colorscheme tokyonight ]])
-- vim.cmd([[ let g:tokyonight_style = 'moon' | colorscheme tokyonight ]])
-- vim.cmd([[ let g:tokyonight_style = 'night' | colorscheme tokyonight ]])
-- vim.cmd([[ let g:tokyonight_style = 'day' | colorscheme tokyonight ]])
