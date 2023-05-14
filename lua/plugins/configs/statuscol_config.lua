local builtin = require("statuscol.builtin")

require('statuscol').setup({
    relculright = true,
    setopt = true,
    segments = {
        {
            sign = { name = { "Diagnostic" }, maxwidth = 1, auto = true },
            click = "v:lua.ScSa"
        },
        {
            text = { builtin.lnumfunc },
            condition = { true, builtin.not_empty },
            click = "v:lua.ScLa",
        },
        {
            sign = {
                name = { "GitSigns" },
                maxwidth = 1,
                colwidth = 1,
                auto = true,
            },
            click = "v:lua.ScSa",
        },
        {
            text = { " " }
        }
    },
    ft_ignore = {
        "help",
        "vim",
        "alpha",
        "dashboard",
        "lua-tree",
        "Trouble",
        "noice",
        "lazy",
        "toggleterm",
    }
})
