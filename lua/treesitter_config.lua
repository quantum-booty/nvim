require("indent_blankline").setup {
    char = '|',
    buftype_exclude = {"terminal"},
    space_char_blankline = " ",
    use_treesitter = true,
    show_current_context = false,
}


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
    additional_vim_regex_highlighting = true
  },

   indent = {
     enable = true, disable = {"python"}
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
      enable = true,
      keymaps = {
        smart_rename = "<leader>RN",
      },
    },

  },

  textobjects = {
    lsp_interop = {
      enable = false,
    },
    select = {
      enable = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["a<S-c>"] = "@class.outer",
        ["i<S-c>"] = "@class.inner",
        ["ac"] = "@call.outer",
        ["ic"] = "@call.inner",
        ["ai"] = "@conditional.outer",
        ["ii"] = "@conditional.inner",
        ["al"] = "@loop.outer",
        ["il"] = "@loop.inner",
        ["ip"] = "@parameter.inner",
      },
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
  }
}
