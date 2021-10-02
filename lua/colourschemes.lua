vim.cmd(
[[
" colorscheme srcery
" colorscheme nightfox
" colorscheme tokyonight
" colorscheme gruvbox
colorscheme catppuccino
" colorscheme github
]]
)

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
vim.g.tokyonight_style = 'night' -- available: night, storm

-- " =============================================================================
-- " # Nightfox
-- " =============================================================================
local nightfox = require('nightfox')

nightfox.setup({
fox = "nightfox", -- change the colorscheme to use nordfox
transparent = false,
terminal_colors=true,
styles = {
    -- comments = "italic", -- change style of comments to be italic
    -- keywords = "bold", -- change style of keywords to be bold
    -- functions = "italic,bold" -- styles can be a comma separated list
    },
inverse = {
    match_paren = true,
    search = true,
    visual = true,
    },
})

-- Load the configuration set above and apply the colorscheme
-- nightfox.load()

-- " =============================================================================
-- " # Gruvbox
-- " =============================================================================
vim.g.airline_theme = 'gruvbox'
vim.g.gruvbox_contrast_dark = 'hard'
vim.g.gruvbox_italic = 1
vim.g.gruvbox_invert_selection=1

-- " =============================================================================
-- " # Catppuccino
-- " =============================================================================
local catppuccino = require("catppuccino")

catppuccino.setup(
{
    colorscheme = "dark_catppuccino",
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


-- " =============================================================================
-- " # github theme
-- " =============================================================================
