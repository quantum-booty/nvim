local map = require('utils').map
local opts = { noremap=true, silent=true }

local actions = require("telescope.actions")
local trouble = require("trouble.providers.telescope")

local telescope = require("telescope")


telescope.setup{
    defaults = {
        mappings = {
            i = { ["<c-t>"] = trouble.open_with_trouble },
            n = { ["<c-t>"] = trouble.open_with_trouble },
        },
    },
    pickers = {
        git_files = { theme = "dropdown" },
        buffers = { theme = "dropdown" },
        find_files = { theme = "dropdown" },
        live_grep = { theme = "dropdown" },
        colorscheme = { theme = "dropdown" },
        lsp_references = { theme = "dropdown" },
        lsp_code_actions = { initial_mode='normal' },

    }
}



    -- layout_config = {
    --   width = 80,
    --   height = 9,
    -- },

-- vim.g.teleleader = '_'
map('n', '_', '<leader>p', { noremap=false, silent=true })
-- map("n", "<teleleader<teleleader>", "<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>", opts)


-- search recent files
-- map("n", "<leader><leader>", "<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>", opts)

-- " project_nvim
map('n', '<leader>pp', ':Telescope projects<CR>', opts)

-- " --- File Pickers
-- " Fuzzy find over git files in your directory
map('n', '<C-p>', [[<cmd>lua require('telescope.builtin').git_files()<CR>]], opts)
-- " Search over files in your cwd current working directory.
map('n', '<leader>pf', [[<cmd>lua require('telescope.builtin').find_files()<CR>]], opts)
-- " grep typed string
map('n', '<leader>pg', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], opts)
-- " grep cursor word
map('n', '<leader>pw', [[<cmd>lua require('telescope.builtin').grep_string({search = vim.fn.expand("<cword>")})<CR>]], opts)
-- " grep line
map('n', '<leader>pl', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], opts)
map('n', '<leader>ps', [[<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })<CR>]], opts)


-- " --- Vim Pickers
-- " Opened buffer files
map('n', '<leader><leader>', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], opts)
-- " show help for cursor word
map('n', '<leader>pH', ':tab help <C-R>=expand("<cword>")<CR><CR>', opts)
map('n', '<leader>ph', [[<cmd>Telescope help_tags<cr>]], opts)

-- -- " Convert currently quickfixlist to telescope
-- map('n', '<leader>qf', [[<cmd>lua require('telescope.builtin').quickfix()<CR>]], opts)
-- -- " Convert currently loclist to telescope
-- map('n', '<leader>L', [[<cmd>lua require('telescope.builtin').loclist()<CR>]], opts)
-- " Colour schemes
map('n', '<leader>pc', [[<cmd>lua require('telescope.builtin').colorscheme()<CR>]], opts)
-- " Key maps
map('n', '<leader>pk', [[<cmd>lua require('telescope.builtin').keymaps()<CR>]], opts)



-- " --- LSP Pickers
-- " References under cursor
map('n', '<leader>pr', [[<cmd>lua require('telescope.builtin').lsp_references({initial_mode='normal'})<CR>]], opts)
map('n', '<leader>pi', [[<cmd>lua require('telescope.builtin').lsp_implementations({initial_mode='normal'})<CR>]], opts)
-- " workspace symbol
map('n', '<leader>pW', [[<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<CR>]], opts)
-- " document symbol using treesitter
-- map('n', '<leader>pd', [[<cmd>lua require('telescope.builtin').treesitter()<CR>]], opts)
map('n', '<leader>pd', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]], opts)
-- " Code actions
map('n', '<leader>pa', [[<cmd>lua require('telescope.builtin').lsp_code_actions(require('telescope.themes').get_cursor({layout_config = {height = 15}}))<CR>]], opts)


-- -- " " --- git pickers
-- -- " " commits
-- map('n', '<leader>pgc', [[<cmd>lua require('telescope.builtin').git_commits()<CR>]], opts)
-- -- " " buffer git commits
-- map('n', '<leader>pgbc', [[<cmd>lua require('telescope.builtin').git_bcommits()<CR>]], opts)
-- -- " " branches
-- map('n', '<leader>pgb', [[<cmd>lua require('telescope.builtin').git_branches()<CR>]], opts)
-- -- " " status
-- map('n', '<leader>pgs', [[<cmd>lua require('telescope.builtin').git_status()<CR>]], opts)
-- -- "
