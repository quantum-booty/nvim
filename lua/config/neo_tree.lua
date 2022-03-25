vim.cmd([[nnoremap <leader>v :Neotree toggle reveal<cr>]])

    
local config = {
    use_popups_for_input = true, -- If false, inputs will use vim.ui.input() instead of custom floats.
    window = { -- see https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/popup for
        -- possible options. These can also be functions that return these options.
        position = "float", -- left, right, float, current
        width = 40, -- applies to left and right positions
        popup = { -- settings that apply to float position only
            size = {
                height = "80%",
                width = "50%",
            },
            position = "50%", -- 50% means center it
            -- you can also specify border here, if you want a different setting from
            -- the global popup_border_style.
        },
        -- Mappings for tree window. See `:h nep-tree-mappings` for a list of built-in commands.
        -- You can also create your own commands by providing a function instead of a string.
        mappings = {
            ["<2-LeftMouse>"] = "open",
            ["<cr>"] = "open",
            ["l"] = "open",
            ["S"] = "open_split",
            ["s"] = "open_vsplit",
            ["C"] = "close_node",
            ["z"] = "close_all_nodes",
            ["h"] = "navigate_up",
            ["."] = "set_root",
            ["<C-l>"] = "refresh",
            ["a"] = "add",
            ["d"] = "delete",
            ["r"] = "rename",
            ["y"] = "copy_to_clipboard",
            ["x"] = "cut_to_clipboard",
            ["p"] = "paste_from_clipboard",
            ["c"] = "copy", -- takes text input for destination
            ["m"] = "move", -- takes text input for destination
            ["q"] = "close_window",
        },
    },
    filesystem = {
        follow_current_file = true,
        window = {
            mappings = {
                ["."] = "toggle_hidden",
                ["/"] = "fuzzy_finder",
                ["f"] = "filter_on_submit",
                ["<C-x>"] = "clear_filter",
            }
        },
    buffers = {
        bind_to_cwd = true,
        window = {
            mappings = {
                ["bd"] = "buffer_delete",
            },
        },
    },
    git_status = {
        window = {
            mappings = {
                ["A"] = "git_add_all",
                ["gu"] = "git_unstage_file",
                ["ga"] = "git_add_file",
                ["gr"] = "git_revert_file",
                ["gc"] = "git_commit",
                ["gp"] = "git_push",
                ["gg"] = "git_commit_and_push",
            },
        },
    },
}
}


require("neo-tree").setup(config)
