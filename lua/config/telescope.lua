local map = require('utils').map
local opts = { noremap=true, silent=true }

local actions = require("telescope.actions")
local trouble = require("trouble.providers.telescope")

local telescope = require("telescope")
-- local fb_actions = require "telescope".extensions.file_browser.actions
--
-- local open_in_fb = function(prompt_bufnr)
--     local action_state = require "telescope.actions.state"
--     local Path = require "plenary.path"
--     local actions = require "telescope.actions"
--     local fb = require("telescope").extensions.file_browser.file_browser
--     local entry = action_state.get_selected_entry()[1]
--     local entry_path = Path:new(entry):parent():absolute()
--     actions._close(prompt_bufnr, true)
--     fb { path = entry_path }
-- end

local open_in_nvim_tree = function(prompt_bufnr)
    local action_state = require "telescope.actions.state"
    local Path = require "plenary.path"

    local entry = action_state.get_selected_entry()[1]
    local entry_path = Path:new(entry):parent():absolute()
    actions.close(prompt_bufnr)
    entry_path = Path:new(entry):parent():absolute()
    entry_path = entry_path:gsub("\\", "\\\\")

    vim.cmd("NvimTreeClose")
    vim.cmd("NvimTreeOpen " .. entry_path)
    -- vim.cmd("Neotree dir=" .. entry_path)

    local file_name = nil
    for s in string.gmatch(entry, "[^/]+") do
        file_name = s
    end

    vim.cmd("?" .. file_name)
end



telescope.setup{
    defaults = {
        path_display={"smart"},
        sorting_strategy = "ascending",
        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.55,
                results_width = 0.8,
            },
            vertical = {
                mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
        },
        mappings = {
            i = {
                ["<c-t>"] = trouble.open_with_trouble,
                ["<c-r>"] = open_in_fb,
                ["<c-s>"] = open_in_nvim_tree,
            },
            n = {
                ["<c-t>"] = trouble.open_with_trouble,
                ["<c-r>"] = open_in_fb,
                ["<c-s>"] = open_in_nvim_tree,
            },
        },
    },
    pickers = {
        git_files = { theme = "dropdown" },
        buffers = { theme = "dropdown" },
        colorscheme = { theme = "dropdown" },
        -- lsp_code_actions = { initial_mode='normal' },
        help_tags = { jump_type = 'tab'},
        current_buffer_fuzzy_find = { theme = "dropdown" },
        lsp_definitions = { theme = "ivy" },
        lsp_references = { theme = "ivy" },
    },
    extensions = {
        -- file_browser = {
        --     -- initial_mode='normal',
        --     -- files = false,
        --     theme = "ivy",
        --     mappings = {
        --         ["i"] = {
        --             -- your custom insert mode mappings
        --         },
        --         ["n"] = {
        --             ["n"] = fb_actions.create,
        --             ["r"] = fb_actions.rename,
        --             ["v"] = fb_actions.move,
        --             ["y"] = fb_actions.copy,
        --             ["x"] = fb_actions.remove,
        --             ["o"] = fb_actions.open,
        --             ["h"] = fb_actions.goto_parent_dir,
        --             ["~"] = fb_actions.goto_home_dir,
        --             ["w"] = fb_actions.goto_cwd,
        --             ["t"] = fb_actions.change_cwd,
        --             ["f"] = fb_actions.toggle_browser,
        --             ["."] = fb_actions.toggle_hidden,
        --             ["m"] = fb_actions.toggle_all,
        --         },
        --     },
        -- },
    },
}


map('n', '_', '<leader>p', { noremap=false, silent=true })

-- " project_nvim
map('n', '<leader>pp', ':Telescope projects<CR>', opts)

-- " --- File Pickers
-- " Fuzzy find over git files in your directory
vim.keymap.set('n', '<C-p>', require('telescope.builtin').git_files, opts)
-- " Search over files in your cwd current working directory.
map('n', '<leader>pf', [[<cmd>lua require('telescope.builtin').find_files()<CR>]], opts)
-- " grep typed string
map('n', '<leader>pg', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], opts)
-- " grep cursor word
map('n', '<leader>pw', [[<cmd>lua require('telescope.builtin').grep_string({search = vim.fn.expand("<cword>")})<CR>]], opts)
-- " grep line
map('n', '<leader>pl', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], opts)

vim.keymap.set('n', '<leader>pb', require('telescope.builtin').current_buffer_fuzzy_find, opts)
vim.keymap.set('n', '<leader>po', require('telescope.builtin').oldfiles, opts)



-- " --- Vim Pickers
-- " Opened buffer files
map('n', '<leader><leader>', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], opts)
-- " show help for cursor word
map('n', '<leader>pH', ':tab help <C-R>=expand("<cword>")<CR><CR>', opts)
map('n', '<leader>ph', [[<cmd>Telescope help_tags<cr>]], opts)

-- " Colour schemes
map('n', '<leader>pc', [[<cmd>lua require('telescope.builtin').colorscheme()<CR>]], opts)
-- " Key maps
map('n', '<leader>pk', [[<cmd>lua require('telescope.builtin').keymaps()<CR>]], opts)



-- " --- LSP Pickers
-- " References under cursor
map('n', 'gr', [[<cmd>lua require('telescope.builtin').lsp_references({initial_mode='normal'})<CR>]], opts)
map('n', '<leader>pr', [[<cmd>lua require('telescope.builtin').lsp_references({initial_mode='normal'})<CR>]], opts)
map('n', 'gd', [[<cmd>lua require('telescope.builtin').lsp_definitions({initial_mode='normal'})<CR>]], opts)
map('n', '<leader>pr', [[<cmd>lua require('telescope.builtin').lsp_references({initial_mode='normal'})<CR>]], opts)
map('n', '<leader>pR', [[<cmd>lua require('telescope.builtin').resume({initial_mode='normal'})<CR>]], opts)
map('n', '<leader>pi', [[<cmd>lua require('telescope.builtin').lsp_implementations({initial_mode='normal'})<CR>]], opts)
-- " workspace symbol
map('n', '<leader>pW', [[<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<CR>]], opts)
-- " document symbol using treesitter
-- map('n', '<leader>pd', [[<cmd>lua require('telescope.builtin').treesitter()<CR>]], opts)
map('n', '<leader>pd', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]], opts)
-- " Code actions
-- map('n', '<leader>pa', [[<cmd>lua require('telescope.builtin').lsp_code_actions(require('telescope.themes').get_cursor({layout_config = {height = 15}}))<CR>]], opts)


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

-- file_browser
-- require("telescope").load_extension "file_browser"
-- map('n', '<leader>pv', ':Telescope file_browser<CR>', opts)
--
--   local fb = require("telescope").extensions.file_browser.file_browser
-- path = "%:p:h"
--
--
--
