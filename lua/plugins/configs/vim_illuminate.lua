-- default configuration
require('illuminate').configure({
    providers = {
        'lsp',
        'treesitter',
        -- 'regex',
    },
    under_cursor = false,
    large_file_cutoff = 5000,
})
