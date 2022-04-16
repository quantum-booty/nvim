local map = require('utils').map
local buf_map = require('utils').buf_map
local opts = { noremap=true, silent=true}

vim.g.jupyter_mapkeys = 0

buf_map(0, 'n', '<localleader>c', 'o<CR># %%', opts)

-- ctrl shift M on qtconsole to open menu
buf_map(0, 'n', '<localleader>sc', ':term jupyter qtconsole<CR><C-o>:JupyterConnect<CR><CR>', opts) 
buf_map(0, 'n', '<localleader>S', ':JupyterConnect<CR>', opts) 
buf_map(0, 'n', '<localleader>a', ':JupyterRunFile<CR>', opts) 
buf_map(0, 'v', '<localleader><space>', '<Plug>JupyterRunVisual', opts) 
buf_map(0, 'n', '<localleader><space>', ':JupyterSendCell<CR>', opts) 

buf_map(0, 'n', '<localleader>d', ':JupyterCd %:p:h<CR>', opts)
buf_map(0, 'n', '<localleader>i', ':PythonImportThisFile<CR>', opts)
buf_map(0, 'n', '<localleader>l', ':JupyterSendRange<CR>', opts)
buf_map(0, 'n', '<localleader>E', '<Plug>JupyterRunTextObj', opts)
