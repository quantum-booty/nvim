local map = require('utils').map
local autocmd_multi = require('utils').autocmd_multi
local opts = { noremap = true, silent = true }
local path = require('path')

local debugpy = nil
if vim.fn.has('win32') == 1 then
    debugpy = path.concat { vim.fn.stdpath "data", "mason", "packages", "debugpy", "venv", "bin", "python.exe" }
else
    debugpy = path.concat { vim.fn.stdpath "data", "mason", "packages", "debugpy", "venv", "bin", "python" }
end


require('dap-python').setup(debugpy)
require('dap-python').test_runner = 'pytest'

require("nvim-dap-virtual-text").setup({})
vim.cmd([[highlight NvimDapVirtualText guifg=#82E0AA]])
vim.g.dap_virtual_text = 'all frames' -- experimental
-- " highlight NvimDapVirtualText link Error

autocmd_multi(
    'DAP',
    {
        { 'ColorScheme', { pattern = '*', command = 'highlight NvimDapVirtualText guifg=#82E0AA' } },
    },
    true
)

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open({})
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close({})
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close({})
end

dapui.setup()


vim.fn.sign_define('DapBreakpoint', { text = '🛑', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapBreakpointCondition', { text = '🔵', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapLogPoint', { text = '🟢', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapStopped', { text = '⏩', texthl = '', linehl = '', numhl = '' })

map('n', '<F10>', ":lua require'dap'.step_over()<CR>", opts)
map('n', '<F11>', ":lua require'dap'.step_into()<CR>", opts)
map('n', '<F12>', ":lua require'dap'.step_out()<CR>", opts)

map('n', '<F4>', ":lua require'dap'.run_to_cursor()<CR>", opts)
map('n', '<F5>', ":lua require'dap'.continue()<CR>", opts)
map('n', '<F6>', ":lua require'dapui'.eval()<CR>", opts)
map('v', '<F6>', ":lua require'dapui'.eval()<CR>", opts)
-- map('n', '<F11>', ":lua require'dapui'.float_element('repl')<CR>", opts)

map('n', '<F7>', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
map('n', '<F8>', ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", opts)
map('n', '<F9>', ":lua require'dap'.toggle_breakpoint()<CR>", opts)
map('n', '<F1>', ":lua require'dapui'.toggle()<CR>", opts)
map('n', '<F2>', ":lua require'dap'.terminate()<CR>", opts)

map('n', '<leader>tm', ":lua require('dap-python').test_method()<CR>", opts)
map('n', '<leader>tc', ":lua require('dap-python').test_class()<CR>", opts)
map('v', '<leader>ts', "<ESC>:lua require('dap-python').debug_selection()<CR>", opts)
--
-- map('n', '<leader>dC', ':Telescope dap commands<CR>', opts)
-- map('n', '<leader>dc', ':Telescope dap configurations<CR>', opts)
-- map('n', '<leader>db', ':Telescope dap list_breakpoints<CR>', opts)
-- map('n', '<leader>dv', ':Telescope dap variables<CR>', opts)
-- map('n', '<leader>df', ':Telescope dap frames<CR>', opts)
