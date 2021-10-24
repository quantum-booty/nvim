-- " =============================================================================
-- " # Srcery
-- " =============================================================================
vim.g.srcery_italic = 1
vim.g.srcery_bold = 1
vim.g.srcery_inverse_matches = 1
vim.g.srcery_inverse = 1
vim.g.srcery_italic_types = 1
vim.g.srcery_inverse_match_paren = 1

-- " =============================================================================
-- " # Tokyo Night
-- " =============================================================================

-- " =============================================================================
-- " # Nightfox
-- " =============================================================================
local nightfox = require('nightfox')

nightfox.setup({
    fox = "nightfox", -- change the colorscheme to use nordfox
    transparent = false,
    terminal_colors=true,
    styles = {
        comments = "italic", -- change style of comments to be italic
        keywords = "italic", -- change style of keywords to be bold
        functions = "bold" -- styles can be a comma separated list
    },
    inverse = {
        match_paren = true,
        search = true,
        visual = true,
    },
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
-- " # Catppuccino
-- " =============================================================================
local catppuccino = require("catppuccino")

catppuccino.setup(
    {
        colorscheme = "dark_catppuccino",
        styles = {
            comments = "italic",
            functions = "bold",
            keywords = "italic",
            strings = "italic",
            variables = "NONE",
        },
        transparency = false,
        integrations = {
            treesitter = true,
            lsp_trouble = true,
            lsp_saga = true,
            gitsigns = true,
            telescope = true,
            which_key = true,
            indent_blankline = {
                enabled = true,
                colored_indent_levels = true,
            },
            dashboard = true,
            neogit = true,
            barbar = true,
            ts_rainbow = true,
            hop = true,
        }
    }
)


-- =============================================================================
-- # doom one
-- =============================================================================
--
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
    end,

-- vim.cmd([[colorscheme srcery]])
-- vim.cmd([[set background=dark | colorscheme gruvbox]])
-- vim.cmd([[set background=light | colorscheme gruvbox]])

-- nightfox.load('nightfox')
-- nightfox.load('nordfox')
-- nightfox.load('duskfox')
-- nightfox.load('palefox')
-- nightfox.load('dayfox')
-- nightfox.load('dawnfox')

catppuccino.load()
-- catppuccino.load('soft_manilo')
-- catppuccino.load('neon_latte')
-- catppuccino.load('light_melya')
--
-- vim.cmd([[ let g:tokyonight_style = 'storm' | colorscheme tokyonight ]])
-- vim.cmd([[ let g:tokyonight_style = 'night' | colorscheme tokyonight ]])
-- vim.cmd([[ let g:tokyonight_style = 'day' | colorscheme tokyonight ]])

-- vim.cmd([[colorscheme github_dimmed]])
-- vim.cmd([[colorscheme doom-one]])
