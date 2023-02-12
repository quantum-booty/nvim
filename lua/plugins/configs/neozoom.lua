require('neo-zoom').setup {
    winopts = {
        offset = {
            width = 0.99,
            height = 0.95,
        },
        border = 'none',
    },
    exclude_buftypes = { 'terminal' },
    presets = {
        {
            filetypes = { 'dapui_.*', 'dap-repl' },
            config = {
                top = 0.25,
                left = 0.6,
                width = 0.4,
                height = 0.65,
            },
            callbacks = {
                function() vim.wo.wrap = true end,
            },
        },
    },
}
vim.keymap.set('n', '<Del>', require("neo-zoom").neo_zoom, { silent = true, nowait = true })
