-- this tells treesitter where to download the .norg parser
-- run :TSInstall norg
local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()
parser_configs.norg = {
    install_info = {
        url = "https://github.com/vhyrro/tree-sitter-norg",
        files = { "src/parser.c", "src/scanner.cc" },
        branch = "main"
    },
}



require'nvim-treesitter.configs'.setup {
    ensure_installed = {"norg", "python", "lua", "vim", "html", "json"},

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },

    indent = {
        enable = true,
    },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<C-n>",
            node_incremental = "<C-n>",
            scope_incremental = "<C-s>",
            node_decremental = "<C-c>",
        },
    },

    refactor = {
        highlight_definitions = { enable = true },
        smart_rename = {
            enable = false,
            keymaps = {
                smart_rename = "<leader>RN",
            },
        },

    },

    textobjects = {
        lsp_interop = {
            enable = true,
        },
        select = {
            enable = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
                ["ai"] = "@conditional.outer",
                ["ii"] = "@conditional.inner",
                ["al"] = "@loop.outer",
                ["il"] = "@loop.inner",
                -- ["ip"] = "@parameter.inner",
                ["iB"] = "@block.inner",
                ["aB"] = "@block.outer",
            },
        },
        move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                ["])"] = "@function.outer",
                ["]]"] = "@class.outer",
            },
            -- goto_next_end = {
            --     ["]M"] = "@function.outer",
            --     ["]["] = "@class.outer",
            -- },
            goto_previous_start = {
                ["[("] = "@function.outer",
                ["[["] = "@class.outer",
            },
            -- goto_previous_end = {
            --     ["[M"] = "@function.outer",
            --     ["[]"] = "@class.outer",
            -- },
        },
        swap = {
            enable = true,
            swap_next = {
                ["<leader>e"] = "@parameter.inner",
            },
            swap_previous = {
                ["<leader>E"] = "@parameter.inner",
            },
        },
    },
    rainbow = {
        enable = true,
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    },
    context_commentstring = {
        enable = true
    }

}
