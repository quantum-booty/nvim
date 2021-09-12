local map = require('utils').map
local autocmd = require('utils').autocmd
local opts = { noremap=true, silent=true }

vim.g.dap_virtual_text = true

require('dap-python').setup('~/virtualenvs/debugpy/bin/python')
require('dap-python').test_runner = 'pytest'

autocmd('dap_aucmds', 'ColorScheme * highlight NvimDapVirtualText guifg=#82E0AA', true)

-- " highlight NvimDapVirtualText link Error

vim.g.maximizer_set_default_mapping = 0
map('n', '<F11>', ':MaximizerToggle<CR>', opts)

map('n','<F1>',  ":lua require'dap'.step_out()<CR>", opts)
map('n','<F2>',  ":lua require'dap'.step_into()<CR>", opts)
map('n','<F3>',  ":lua require'dap'.step_over()<CR>", opts)
map('n','<F5>',  ":lua require'dap'.continue()<CR>", opts)
map('n','<F7>',  ":lua require'dap'.toggle_breakpoint()<CR>", opts)
map('n','<F8>',  ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
map('n','<F9>',  ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", opts)
map('n','<F10>', ":lua require'dap'.repl.open()<CR>", opts)
map('n','<F12>', ":lua require'dap'.run_last()<CR>", opts)

map('n','<leader>tn', ":lua require('dap-python').test_method()<CR>", opts)
map('n','<leader>tf', ":lua require('dap-python').test_class()<CR>", opts)
map('v','<leader>ts', "<ESC>:lua require('dap-python').debug_selection()<CR>", opts)


require("dapui").setup({
  icons = {
    expanded = "⯆",
    collapsed = "⯈",
    circular = "↺"
  },
  mappings = {
    expand = "<CR>",
    open = "o",
    remove = "d"
  },
  sidebar = {
    elements = {
      -- You can change the order of elements in the sidebar
      "scopes",
      "stacks",
      "watches"
    },
    size = 40,
    position = "left" -- Can be "left" or "right"
  },
  tray = {
    elements = {
      "repl"
    },
    size = 10,
    position = "bottom" -- Can be "bottom" or "top"
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil   -- Floats will be treated as percentage of your screen.
  }
})
