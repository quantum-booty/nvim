local autocmd = require('utils').autocmd
local map = require('utils').map
local buf_map = require('utils').buf_map
local opts = { noremap=true, silent=true}


buf_map(0, 'n', '<c-r>', '<cmd>TermExec cmd="dotnet run"<cr>', opts)
