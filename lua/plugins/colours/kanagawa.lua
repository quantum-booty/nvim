require('kanagawa').setup({
    commentStyle = { italic = false },
    functionStyle = { italic = false },
    keywordStyle = { italic = false },
    variablebuiltinStyle = { italic = false },
    dimInactive = true, -- dim inactive window `:h hl-NormalNC`
    globalStatus = true, -- adjust window separators highlight for laststatus=3
    -- overrides = {
    --     TSDefinitionUsage = { fg = 'BLACK', bg = '#DCD9CD' },
    -- }
})
