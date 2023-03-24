-- let g:copilot_node_command = "~/.nvm/versions/node/v17.9.1/bin/node"

-- vim.defer_fn(function()
--     require('copilot').setup({
--         panel = { enabled = false },
--         suggestion = {
--             enabled = true,
--             auto_trigger = false,
--             debounce = 75,
--             keymap = {
--                 accept = "<Right>",
--                 next = "<M-)>",
--                 prev = "<M-(>",
--                 dismiss = "<C-)>",
--             },
--         },
--         filetypes = {
--             yaml = false,
--             markdown = false,
--             help = false,
--             gitcommit = false,
--             gitrebase = false,
--             hgcommit = false,
--             svn = false,
--             cvs = false,
--             ["."] = false,
--         },
--         copilot_node_command = 'node', -- Node version must be < 18
--         server_opts_overrides = {},
--     })
-- end, 1000)

require('copilot').setup({
    panel = { enabled = false },
    suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
            accept = "<Right>",
            next = "<Up>",
            prev = "<Down>",
            dismiss = "<Left>",
        },
    },
    filetypes = {
        python = true,
        rust = true,
        cs = true,
        yaml = false,
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        json = false,
        csv = false,
        -- ["."] = false,
    },
    copilot_node_command = 'node', -- Node version must be < 18
    server_opts_overrides = {},
})
