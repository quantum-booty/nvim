let g:dap_virtual_text = v:true

lua require('dap-python').setup('~/virtualenvs/debugpy/bin/python')
lua require('dap-python').test_runner = 'pytest'

" highlight NvimDapVirtualText link Error

let g:maximizer_set_default_mapping = 0
nmap <F11> :MaximizerToggle<CR>

nnoremap <silent> <F1> :lua require'dap'.step_out()<CR>
nnoremap <silent> <F2> :lua require'dap'.step_into()<CR>
nnoremap <silent> <F3> :lua require'dap'.step_over()<CR>
nnoremap <silent> <F5> :lua require'dap'.continue()<CR>
nnoremap <silent> <F7> :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <F8> :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <F9> :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <F10> :lua require'dap'.repl.open()<CR>
nnoremap <silent> <F12> :lua require'dap'.run_last()<CR>

nnoremap <silent> <leader>tn :lua require('dap-python').test_method()<CR>
nnoremap <silent> <leader>tf :lua require('dap-python').test_class()<CR>
vnoremap <silent> <leader>ts <ESC>:lua require('dap-python').debug_selection()<CR>


:lua << EOF
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
EOF
