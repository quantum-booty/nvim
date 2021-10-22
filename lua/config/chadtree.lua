vim.api.nvim_set_keymap('n', '<Leader>v', '<Cmd>CHADopen<CR>', { noremap = true})

local chadtree_settings = {
    view = {
        window_options = {
            cursorline = true,
            number = true,
            relativenumber = true,
            signcolumn = "no",
            winfixwidth = false,
            wrap = false
        }
    },
    options = {
        show_hidden = false
    },
    keymap =  {
        refresh = {"<c-l>"},
        change_dir = {"b"},
        change_focus = {"l"},
        change_focus_up = {"h"},
        select = {"<space>"},
        clear_selection = {"m"},
        new = {"a"},
        cut = {"v"},
        trash = {"d", "x"},
        delete = {"`"},
        toggle_hidden = {"."},
    },
    ignore = {
        name_exact = {".mypy_cache", ".gitignore", "__pycache__", ".git", },
        name_glob = {".*"}
    }

    }
vim.api.nvim_set_var("chadtree_settings", chadtree_settings)
