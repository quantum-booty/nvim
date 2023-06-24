require('flash').setup {
    -- labels = "abcdefghijklmnopqrstuvwxyz",
    labels = "asdfghjklqwertyuiopzxcvbnm",
    jump = {
        autojump = true,
    },
    highlight = {
        label = {
            -- add a label for the first match in the current window.
            -- you can always jump to the first match with `<CR>`
            current = true,
        },
        -- show a backdrop with hl FlashBackdrop
        backdrop = true,
        -- Highlight the search matches
        matches = false,
    },
    modes = {
        jump = {
            highlight = { label = { after = false, before = { 0, 2 } } }
        },
        -- options used when flash is activated through
        -- a regular search with `/` or `?`
        search = {
            enabled = true, -- enable flash for search
            highlight = { backdrop = false, label = { current = false, after = false, before = true } },
            jump = { history = true, register = true, nohlsearch = true },
        },
        -- options used when flash is activated through
        -- `f`, `F`, `t`, `T`, `;` and `,` motions
        char = {
            enabled = true,
            -- by default all keymaps are enabled, but you can disable some of them,
            -- by removing them from the list.
            keys = { "f", "F", "t", "T", ";", "," },
            search = { wrap = false },
            highlight = { backdrop = true, matchs = false },
            jump = { register = false },
        },
    },

}
