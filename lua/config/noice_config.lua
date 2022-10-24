require("noice").setup(
    {
        lsp_progress = {
            enabled = true,
        },
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
        routes = {
            {
                view = "split",
                filter = { event = "msg_show", min_height = 2 },
            },
            -- {
            --     view = "mini",
            --     filter = { event = "msg_show", kind = { "echoerr", "wmsg", "", "emsg", "echo", "echomsg" } },
            -- },
            -- echo, echomsg, lua_error, rpc_error, return_prompt, quickfix, search_count, confirm_sub
        }
    }
)
