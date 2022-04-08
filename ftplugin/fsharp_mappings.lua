local buf_map = require('utils').buf_map
local opts = { noremap=true, silent=true}


buf_map(0, 'n', '<localleader>sc', ':FsiShow<CR>', opts) 
buf_map(0, 'n', '<localleader>a', ':FsiEvalBuffer<CR>', opts) 
buf_map(0, 'n', '<localleader><cr>', ':call fsharp#sendLineToFsi()<cr>', opts) 
buf_map(0, 'v', '<localleader><cr>', ':call fsharp#sendSelectionToFsi()<cr>', opts) 
