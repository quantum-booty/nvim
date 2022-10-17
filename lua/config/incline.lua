require('incline').setup {
    highlight = {
        groups = {
            InclineNormal = {
                default = true,
                group = "@keyword.function"
            },
            InclineNormalNC = {
                default = true,
                group = "@keyword.function"
            }
        }
    },
    ignore = {
        buftypes = "special",
        filetypes = {},
        floating_wins = true,
        unlisted_buffers = true,
        wintypes = "special"
    },
    render = "basic",
    window = {
        zindex = 4
    }
}
