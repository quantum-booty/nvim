local not_windows = require('utils').not_windows
if not_windows() then
    require("noice").setup(
        {
            cmdline = {
                enabled = true, -- disable if you use native command line UI
                view = "cmdline_popup", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
            },
            messages = {
                -- NOTE: If you enable noice messages UI, noice cmdline UI is enabled
                -- automatically. You cannot enable noice messages UI only.
                -- It is current neovim implementation limitation.  It may be fixed later.
                enabled = true, -- disable if you use native messages UI
            },
            popupmenu = {
                enabled = false, -- disable if you use something like cmp-cmdline
                ---@type 'nui'|'cmp'
                backend = "nui", -- backend to use to show regular cmdline completions
                -- You can specify options for nui under `config.views.popupmenu`
            },
            history = {
                -- options for the message history that you get with `:Noice`
                view = "split",
                opts = { enter = true },
                filter = { event = "msg_show", ["not"] = { kind = { "search_count", "echo" } } },
            },
            notify = {
                -- Noice can be used as `vim.notify` so you can route any notification like other messages
                -- Notification messages have their level and other properties set.
                -- event is always "notify" and kind can be any log level as a string
                -- The default routes will forward notifications to nvim-notify
                -- Benefit of using Noice for this is the routing and consistent history view
                enabled = false,
            },
            hacks = {
                -- due to https://github.com/neovim/neovim/issues/20416
                -- messages are resent during a redraw. Noice detects this in most cases, but
                -- some plugins (mostly vim plugns), can still cause loops.
                -- When a loop is detected, Noice exits.
                -- Enable this option to simply skip duplicate messages instead.
                skip_duplicate_messages = true,
            },
            -- throttle = 1000 / 30, -- how frequently does Noice need to check for ui updates? This has no effect when in blocking mode.
            -- ---@type table<string, NoiceViewOptions>
            -- views = {}, -- @see the section on views below
            -- ---@type NoiceRouteConfig[]
            routes = {
                -- {
                --     filter = { event = "msg_show", kind = "confirm_sub" },
                --     opts = { skip = true },
                -- },
                {
                    view = "mini",
                    filter = { event = "msg_show", kind = "emsg" },
                    -- opts = { skip = true },
                },
                -- {
                    -- view = "mini",
                --     filter = { event = "msg_show", kind = "echo" },
                --     opts = { skip = true },
                -- },
                -- {
                    -- view = "mini",
                --     filter = { event = "msg_show", kind = "echomsg" },
                --     opts = { skip = true },
                -- },
                {
                    view = "mini",
                    filter = { event = "msg_show", kind = "echoerr" },
                    -- opts = { skip = true },
                },
                -- {
                    -- view = "mini",
                --     filter = { event = "msg_show", kind = "lua_error" },
                --     opts = { skip = true },
                -- },
                -- {
                    -- view = "mini",
                --     filter = { event = "msg_show", kind = "rpc_error" },
                --     opts = { skip = true },
                -- },
                -- {
                    -- view = "mini",
                --     filter = { event = "msg_show", kind = "return_prompt" },
                --     opts = { skip = true },
                -- },
                -- {
                    -- view = "mini",
                --     filter = { event = "msg_show", kind = "quickfix" },
                --     opts = { skip = true },
                -- },
                -- {
                    -- view = "mini",
                --     filter = { event = "msg_show", kind = "search_count" },
                --     opts = { skip = true },
                -- },
                {
                    view = "mini",
                    filter = { event = "msg_show", kind = "wmsg" },
                    -- opts = { skip = true },
                },
                {
                    view = "mini",
                    filter = { event = "msg_show", kind = "" },
                    -- opts = { skip = true },
                },
                -- {
                --     view = "cmdline",
                --     filter = { event = "msg_show", min_height = 10 },
                -- },
            }
            -- ---@type table<string, NoiceFilter>
            -- status = {}, --@see the section on statusline components below
            -- ---@type NoiceFormatOptions
            -- format = {}, -- @see section on formatting
        }
    )
end
