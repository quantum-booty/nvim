-- require("noice").setup(
--     {
--         lsp = {
--             progress = {
--                 enabled = true,
--             },
--             hover = {
--                 enabled = false,
--             },
--             signature = {
--                 enabled = false,
--             },
--             -- override = {
--             --     -- override the default lsp markdown formatter with Noice
--             --     ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
--             --     -- override the lsp markdown formatter with Noice
--             --     ["vim.lsp.util.stylize_markdown"] = true,
--             --     -- override cmp documentation with Noice (needs the other options to work)
--             --     ["cmp.entry.get_documentation"] = true,
--             -- },
--         },
--         cmdline = {
--             enabled = true, -- disable if you use native command line UI
--             view = "cmdline_popup", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
--         },
--         messages = {
--             -- NOTE: If you enable noice messages UI, noice cmdline UI is enabled
--             -- automatically. You cannot enable noice messages UI only.
--             -- It is current neovim implementation limitation.  It may be fixed later.
--             enabled = true, -- disable if you use native messages UI
--         },
--         popupmenu = {
--             enabled = false, -- disable if you use something like cmp-cmdline
--             ---@type 'nui'|'cmp'
--             backend = "nui", -- backend to use to show regular cmdline completions
--             -- You can specify options for nui under `config.views.popupmenu`
--         },
--         history = {
--             -- options for the message history that you get with `:Noice`
--             view = "split",
--             opts = { enter = true },
--             filter = { event = "msg_show", ["not"] = { kind = { "search_count", "echo" } } },
--         },
--         notify = {
--             -- Noice can be used as `vim.notify` so you can route any notification like other messages
--             -- Notification messages have their level and other properties set.
--             -- event is always "notify" and kind can be any log level as a string
--             -- The default routes will forward notifications to nvim-notify
--             -- Benefit of using Noice for this is the routing and consistent history view
--             enabled = false,
--         },
--         routes = {
--             {
--                 view = "split",
--                 filter = { event = "msg_show", min_height = 2 },
--             },
--             -- {
--             --     view = "mini",
--             --     filter = { event = "msg_show", kind = { "echoerr", "wmsg", "", "emsg", "echo", "echomsg" } },
--             -- },
--             -- echo, echomsg, lua_error, rpc_error, return_prompt, quickfix, search_count, confirm_sub
--         }
--     }
-- )


require("noice").setup({
    lsp = {
        progress = {
            enabled = true,
        },
        hover = {
            enabled = false,
        },
        signature = {
            enabled = false,
        },
        -- override = {
        --     -- override the default lsp markdown formatter with Noice
        --     ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        --     -- override the lsp markdown formatter with Noice
        --     ["vim.lsp.util.stylize_markdown"] = true,
        --     -- override cmp documentation with Noice (needs the other options to work)
        --     ["cmp.entry.get_documentation"] = true,
        -- },
    },
    -- you can enable a preset for easier configuration
    presets = {
        bottom_search = false, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
    },
})
