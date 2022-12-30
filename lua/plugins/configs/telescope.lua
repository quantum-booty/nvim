local map = require('utils').map
local opts = { noremap = true, silent = true }

local trouble = require("trouble.providers.telescope")
local telescope = require("telescope")

telescope.setup {
    defaults = {
        path_display = { "smart" },
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
            },
            n = {
                ["<c-t>"] = trouble.open_with_trouble,
            },
        },
    },
    pickers = {
        git_files = { theme = "dropdown" },
        buffers = { theme = "dropdown" },
        colorscheme = { theme = "dropdown" },
        help_tags = { jump_type = 'tab' },
        current_buffer_fuzzy_find = { theme = "dropdown" },
        lsp_definitions = { initial_mode = 'normal', theme = "ivy", show_line = false },
        lsp_implementations = { initial_mode = 'normal', theme = "ivy", show_line = false },
        lsp_references = { initial_mode = 'normal', theme = "ivy", show_line = false },
    },
}
require('telescope').load_extension('zf-native')
require('telescope').load_extension('projects')
require('project_nvim').setup {}


local project_files = function()
    local _, ret, _ = require('telescope.utils').get_os_command_output({ 'git', 'rev-parse', '--is-inside-work-tree' })
    if ret == 0 then
        require('telescope.builtin').git_files()
    else
        require('telescope.builtin').find_files()
    end
end


map('n', '_', '<leader>p', { noremap = false, silent = true })

-- " project_nvim
map('n', '<leader>pp', ':Telescope projects<CR>', opts)

-- " --- File Pickers
-- " Fuzzy find over git files in your directory
vim.keymap.set('n', '<C-p>', project_files, opts)
vim.keymap.set('n', '<leader>pf', require('telescope.builtin').find_files, opts)
vim.keymap.set('n', '<leader>ps', require('telescope.builtin').git_status, opts)
-- " grep typed string
map('n', '<leader>pg', [[<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>]], opts)
-- " grep cursor word
map('n', '<leader>pw', [[<cmd>lua require('telescope.builtin').grep_string({search = vim.fn.expand("<cword>")})<CR>]],
    opts)

vim.keymap.set('n', '<leader>pb', require('telescope.builtin').current_buffer_fuzzy_find, opts)
vim.keymap.set('n', '<leader>po', require('telescope.builtin').oldfiles, opts)


-- " --- Vim Pickers
map('n', '<leader>pR', [[<cmd>lua require('telescope.builtin').resume({initial_mode='normal'})<CR>]], opts)
-- " Opened buffer files
map('n', '<leader><leader>', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], opts)
-- " show help for cursor word
map('n', '<leader>pH', ':tab help <C-R>=expand("<cword>")<CR><CR>', opts)
map('n', '<leader>ph', [[<cmd>Telescope help_tags<cr>]], opts)

-- " Colour schemes
map('n', '<leader>pc', [[<cmd>lua require('telescope.builtin').colorscheme()<CR>]], opts)
