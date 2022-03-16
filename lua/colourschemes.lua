-- " =============================================================================
-- " # Srcery
-- " =============================================================================
vim.g.srcery_italic = 1
vim.g.srcery_bold = 1
vim.g.srcery_inverse_matches = 1
vim.g.srcery_inverse = 1
vim.g.srcery_italic_types = 1
vim.g.srcery_inverse_match_paren = 0

-- " =============================================================================
-- " # Tokyo Night
-- " =============================================================================

-- " =============================================================================
-- " # Nightfox
-- " =============================================================================
local nightfox = require('nightfox')

nightfox.setup({
    options = {
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
local catppuccin = require("catppuccin")
catppuccin.setup(
    {
		transparent_background = false,
		term_colors = false,
		styles = {
			comments = "italic",
			functions = "italic",
			keywords = "italic",
			strings = "NONE",
			variables = "NONE",
		},
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = "italic",
					hints = "italic",
					warnings = "italic",
					information = "italic",
				},
				underlines = {
					errors = "underline",
					hints = "underline",
					warnings = "underline",
					information = "underline",
				},
			},
			lsp_trouble = true,
			gitsigns = true,
			telescope = true,
			nvimtree = {
				enabled = true,
				show_root = true,
			},
			which_key = true,
			indent_blankline = {
				enabled = true,
				colored_indent_levels = true,
			},
			neogit = true,
			barbar = true,
			markdown = true,
			lightspeed = true,
			ts_rainbow = true,
		},
	}
)

-- =============================================================================
-- # doom one
-- =============================================================================
config = function()
    require('doom-one').setup({
        cursor_coloring = true,
        terminal_colors = true,
        italic_comments = true,
        enable_treesitter = true,
        transparent_background = false,
        pumblend = {
            enable = true,
            transparency_amount = 20,
        },
        plugins_integrations = {
            neorg = true,
            barbar = true,
            gitsigns = true,
            telescope = true,
            neogit = true,
            -- nvim_tree = true,
            dashboard = true,
            startify = true,
            whichkey = true,
            indent_blankline = true,
        },
    })
end

-- =============================================================================
-- # one dark
-- =============================================================================
onedark = require('onedark')
onedark.setup({
    style = 'darker',
    transparent = false,
    toggle_style_key = '<nop>',
})

-- =============================================================================
-- # one nord
-- =============================================================================
-- require('onenord').setup({
--     borders = true, -- Split window borders
--     italics = {
--         comments = true, -- Italic comments
--         strings = true, -- Italic strings
--         keywords = true, -- Italic keywords
--         functions = false, -- Italic functions
--         variables = false, -- Italic variables
--     },
--     bold = {
--         functions = true, -- Bold functions
--     },
--     disable = {
--         background = false, -- Disable setting the background color
--         cursorline = false, -- Disable the cursorline
--         eob_lines = true, -- Hide the end-of-buffer lines
--     },
--     custom_highlights = {}, -- Overwrite default highlight groups
-- })
--

-- =============================================================================
-- # rose pine
-- =============================================================================
vim.g.rose_pine_variant = 'moon' -- base, moon, dawn


-- vim.cmd([[colorscheme srcery]])
-- vim.cmd([[set background=dark | colorscheme gruvbox]])
-- vim.cmd([[set background=light | colorscheme gruvbox]])
-- vim.cmd([[colorscheme github_dimmed]])
-- vim.cmd([[colorscheme doom-one]])
-- onedark.load()
-- vim.cmd([[colorscheme onenord]])
-- vim.cmd([[colorscheme rose-pine]])
-- vim.cmd([[colorscheme kanagawa]])

-- vim.cmd([[colorscheme nightfox]])
-- vim.cmd([[colorscheme nordfox]])
vim.cmd([[colorscheme duskfox]])
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
