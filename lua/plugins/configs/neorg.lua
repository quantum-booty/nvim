require('neorg').setup {
    lazy_loading = true,
    load = {
        ['core.defaults'] = {},	-- Tells neorg to load the module called core.defaults with no extra data
        ['core.concealer'] = {
            config = {
                icon_preset = 'diamond'
            }
        },
    },
}
