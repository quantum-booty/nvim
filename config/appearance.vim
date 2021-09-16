" =============================================================================
" # colorscheme settings
" =============================================================================
set relativenumber
set number
set colorcolumn=80
set cmdheight=1 " Give more space for displaying messages.
set termguicolors
let &fcs='eob: ' " Hide ~ for empty buffer line
set background=dark


" colorscheme srcery
" colorscheme tokyonight
colorscheme nightfox
" colorscheme gruvbox
" colorscheme catppuccino

" =============================================================================
" # Srcery
" =============================================================================
let g:srcery_italic = 0
let g:srcery_bold = 1
let g:srcery_inverse_matches = 1
let g:srcery_inverse = 1
let g:srcery_italic_types = 0
let g:srcery_inverse_match_paren = 1

" =============================================================================
" # Tokyo Night
" =============================================================================
let g:tokyonight_style = 'night' " available: night, storm

" =============================================================================
" # Nightfox
" =============================================================================
:lua <<EOF
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
EOF

" =============================================================================
" # Gruvbox
" =============================================================================
let g:airline_theme = 'gruvbox'
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic = 1
let g:gruvbox_invert_selection='0'

" =============================================================================
" # Catppuccino
" =============================================================================
lua << EOF
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
EOF
