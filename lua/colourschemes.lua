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
        dim_inactive=true,
        transparent = false,
        terminal_colors=true,
        styles = {
            comments = "italic", -- change style of comments to be italic
            keywords = "italic", -- change style of keywords to be bold
            functions = "bold" -- styles can be a comma separated list
        },
        inverse = {
            match_paren = false,
            search = true,
            visual = true,
        },
    }
})

-- " =============================================================================
-- " # Gruvbox
-- " =============================================================================
vim.g.airline_theme = 'gruvbox'
vim.g.gruvbox_contrast_dark = 'soft'
vim.g.gruvbox_contrast_light = 'soft'
vim.g.gruvbox_italic = 1
vim.g.gruvbox_invert_selection=1

-- " =============================================================================
-- " # Catppuccin
-- " =============================================================================
-- local catppuccin = require("catppuccin")
-- catppuccin.setup(
--     {
-- 		transparent_background = false,
-- 		term_colors = false,
-- 		styles = {
-- 			comments = "italic",
-- 			functions = "italic",
-- 			keywords = "italic",
-- 			strings = "NONE",
-- 			variables = "NONE",
-- 		},
-- 		integrations = {
-- 			treesitter = true,
-- 			native_lsp = {
-- 				enabled = true,
-- 				virtual_text = {
-- 					errors = "italic",
-- 					hints = "italic",
-- 					warnings = "italic",
-- 					information = "italic",
-- 				},
-- 				underlines = {
-- 					errors = "underline",
-- 					hints = "underline",
-- 					warnings = "underline",
-- 					information = "underline",
-- 				},
-- 			},
-- 			lsp_trouble = true,
-- 			gitsigns = true,
-- 			telescope = true,
-- 			nvimtree = {
-- 				enabled = true,
-- 				show_root = true,
-- 			},
-- 			which_key = true,
-- 			indent_blankline = {
-- 				enabled = true,
-- 				colored_indent_levels = true,
-- 			},
-- 			neogit = true,
-- 			barbar = true,
-- 			markdown = true,
-- 			lightspeed = true,
-- 			ts_rainbow = true,
-- 		},
-- 	}
-- )
--
-- =============================================================================
-- # one dark
-- =============================================================================
onedark = require('onedark')
onedark.setup({
    style = 'darker',
    transparent = false,
    toggle_style_key = '<nop>',
    highlights = {
        TSDefinitionUsage = {fg = 'BLACK', bg='#DCD9CD'},
    }
}
)



-- =============================================================================
-- # one nord
-- =============================================================================
require('onenord').setup({
    borders = true, -- Split window borders
    bold = {
        functions = true, -- Bold functions
    },
    custom_highlights = {
        TSDefinitionUsage = { style = "reverse" },
        Visual = { style = "reverse" },
    },
})


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
    commentStyle = "NONE",
    functionStyle = "NONE",
    keywordStyle = "NONE",
    variablebuiltinStyle = "NONE",
    dimInactive = true,        -- dim inactive window `:h hl-NormalNC`
    globalStatus = true,       -- adjust window separators highlight for laststatus=3
    overrides = {
        TSDefinitionUsage = {fg = 'BLACK', bg='#DCD9CD'},
    }
})


-- vim.cmd([[colorscheme srcery]])
-- vim.cmd([[set background=dark | colorscheme gruvbox]])
-- vim.cmd([[set background=light | colorscheme gruvbox]])
-- onedark.load()
-- vim.cmd([[colorscheme onenord]])
-- vim.cmd([[colorscheme rose-pine]])
-- vim.cmd([[colorscheme kanagawa]])
-- vim.cmd([[colorscheme tokyodark]])

vim.cmd([[colorscheme nightfox]])
-- vim.cmd([[colorscheme terafox]])
-- vim.cmd([[colorscheme nordfox]])
-- vim.cmd([[colorscheme duskfox]])
-- vim.cmd([[colorscheme dayfox]])
-- vim.cmd([[colorscheme dawnfox]])

-- catppuccin.load()
-- catppuccin.load('soft_manilo')
-- catppuccin.load('neon_latte')
-- catppuccin.load('light_melya')
--
-- vim.cmd([[ let g:tokyonight_style = 'storm' | colorscheme tokyonight ]])
-- vim.cmd([[ let g:tokyonight_style = 'night' | colorscheme tokyonight ]])
-- vim.cmd([[ let g:tokyonight_style = 'day' | colorscheme tokyonight ]])
