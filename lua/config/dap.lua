local map = require('utils').map
local autocmd_multi = require('utils').autocmd_multi
local opts = { noremap = true, silent = true }


require('dap-python').setup(os.getenv('PYENV_ROOT') .. '/versions/debugpy/bin/python')
require('dap-python').test_runner = 'pytest'

vim.g.dap_virtual_text = true -- recommended
-- vim.g.dap_virtual_text = 'all frames' -- experimental
-- " highlight NvimDapVirtualText link Error


vim.cmd([[highlight NvimDapVirtualText guifg=#82E0AA]])
autocmd_multi(
    'DAP',
    {
        -- brighter dap virtual text
        { 'ColorScheme', { pattern = '*', command = 'highlight NvimDapVirtualText guifg=#82E0AA' } },
        -- add autocompletion to dap REPL
        { 'FileType ', { pattern = 'dap-repl', callback = require("dap.ext.autocompl").attach } },
    },
    true
)


vim.fn.sign_define('DapBreakpoint', { text = '🛑', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapBreakpointCondition', { text = '🔵', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapLogPoint', { text = '🟢', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapStopped', { text = '⏩', texthl = '', linehl = '', numhl = '' })
-- vim.fn.sign_define('DapBreakRejected', {text='🛑', texthl='', linehl='', numhl=''})
--

local dap = require('dap')
-- dap.defaults.fallback.external_terminal = {
--     command = 'kitty';
--     args = {'-e'};
-- }
-- dap.defaults.fallback.force_external_terminal = true
dap.defaults.fallback.terminal_win_cmd = 'botright vnew'

map('n', '<F1>', ":lua require'dap'.step_out()<CR>", opts)
map('n', '<F2>', ":lua require'dap'.step_over()<CR>", opts)
map('n', '<F3>', ":lua require'dap'.step_into()<CR>", opts)

map('n', '<F4>', ":lua require'dap'.run_to_cursor()<CR>", opts)
-- map('n','<F5>',  ":lua require'dapui'.open(); require'dap'.continue()<CR>", opts)
map('n', '<F5>', ":lua require'dap'.continue();require'dapui'.open()<CR>", opts)
map('n', '<F6>', ":lua require'dapui'.eval()<CR>", opts)
map('v', '<F6>', ":lua require'dapui'.eval()<CR>", opts)
map('n', '<F11>', ":lua require'dapui'.float_element('repl')<CR>", opts)

map('n', '<F7>', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
map('n', '<F8>', ":lua require'dap'.toggle_breakpoint()<CR>", opts)
map('n', '<F9>', ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", opts)
map('n', '<F10>', ":lua require'dapui'.toggle()<CR>", opts)
map('n', '<F12>', ":lua require'dap'.run_last()<CR>", opts)

map('n', '<leader>tm', ":lua require('dap-python').test_method()<CR>", opts)
map('n', '<leader>tc', ":lua require('dap-python').test_class()<CR>", opts)
map('v', '<leader>ts', "<ESC>:lua require('dap-python').debug_selection()<CR>", opts)



map('n', '<leader>dC', ':Telescope dap commands<CR>', opts)
map('n', '<leader>dc', ':Telescope dap configurations<CR>', opts)
map('n', '<leader>db', ':Telescope dap list_breakpoints<CR>', opts)
map('n', '<leader>dv', ':Telescope dap variables<CR>', opts)
map('n', '<leader>df', ':Telescope dap frames<CR>', opts)


require("dapui").setup({
    icons = { expanded = "▾", collapsed = "▸" },
    mappings = {
        -- Use a table to apply multiple mappings
        expand = { "<CR>", "<2-LeftMouse>" },
        open = "o",
        remove = "d",
        edit = "e",
        repl = "r",
    },
    sidebar = {
        -- You can change the order of elements in the sidebar
        elements = {
            -- Provide as ID strings or tables with "id" and "size" keys
            { id = "stacks", size = 0.5 },
            { id = "breakpoints", size = 0.5 },
        },
        size = 30,
        position = "left", -- Can be "left", "right", "top", "bottom"
    },
    tray = {
        elements = {
            { id = "watches", size = 0.45 },
            { id = "scopes", size = 0.55 },
        },
        size = 20,
        position = "bottom", -- Can be "left", "right", "top", "bottom"
    },
    floating = {
        max_height = nil, -- These can be integers or a float between 0 and 1.
        max_width = nil, -- Floats will be treated as percentage of your screen.
        mappings = {
            close = { "q", "<Esc>" },
        },
    },
    windows = { indent = 1 },
})
