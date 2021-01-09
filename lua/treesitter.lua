 -- set foldmethod=expr
 -- set foldexpr=nvim_treesitter#foldexpr()

 -- hi link TSPunctBracket Normal

require'nvim-treesitter.configs'.setup {
  ensure_installed = "python",

  highlight = {
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
      enable = true,
      keymaps = {
        smart_rename = "<leader>RN",
      },
    },

  },

  textobjects = {
    lsp_interop = {
      enable = true,
      peek_definition_code = {
        ["<leader>f"] = "@function.outer",
        ["<leader>F"] = "@class.outer",
      },
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
}

require "nvim-treesitter.highlight"
    local hlmap = vim.treesitter.highlighter.hl_map
    hlmap.error = nil
    hlmap["punctuation.delimiter"] = "Delimiter"
    hlmap["punctuation.bracket"] = nil

-- require'nvim-treesitter.configs'.setup {
--   rainbow = {
--     enable = true,
--     disable = {'bash'} -- please disable bash until I figure #1 out
--   }
-- }
