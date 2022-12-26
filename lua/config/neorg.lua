require('neorg').setup {
    load = {
        ['core.defaults'] = {},	-- Tells neorg to load the module called core.defaults with no extra data
        ['core.norg.concealer'] = {
            config = {
                icon_preset = 'diamond'
            }
        },
    },
}
