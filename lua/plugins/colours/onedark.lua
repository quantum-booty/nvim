local onedark = require('onedark')
onedark.setup({
    style = 'darker',
    transparent = false,
    toggle_style_key = '<nop>',
    highlights = {
        TSDefinitionUsage = { fg = 'BLACK', bg = '#DCD9CD' },
    }
}
)
onedark.load()
