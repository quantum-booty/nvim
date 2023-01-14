local nightfox = require('nightfox')

nightfox.setup({
    options = {
        dim_inactive = true,
        transparent = false,
        styles = {
            comments = "", -- change style of comments to be italic
            keywords = "", -- change style of keywords to be bold
            -- functions = "bold" -- styles can be a comma separated list
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
