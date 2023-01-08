local Hydra = require("hydra")
local gitsigns = require('gitsigns')

local hint = [[
 _J_: next hunk   _s_: stage hunk        _d_: show deleted   _b_: blame line
 _K_: prev hunk   _u_: undo last stage   _p_: preview hunk   _B_: blame show full 
 _r_: reset hunk  _S_: stage buffer      ^ ^                 _/_: show base file
 ^
 ^ ^              _<Enter>_: Neogit              _<esc>_: exit
]]

Hydra({
   name = 'Git',
   hint = hint,
   config = {
      buffer = bufnr,
      color = 'pink',
      invoke_on_body = true,
      hint = {
         border = 'rounded'
      },
      -- on_enter = function()
      --    vim.cmd('silent! %foldopen!')
      --    vim.bo.modifiable = false
      --    gitsigns.toggle_signs(true)
      --    gitsigns.toggle_linehl(true)
      -- end,
      -- on_exit = function()
      --    gitsigns.toggle_signs(false)
      --    gitsigns.toggle_linehl(false)
      --    gitsigns.toggle_deleted(false)
      -- end,
   },
   mode = {'n','x'},
   body = '<leader>gg',
   heads = {
      { 'J',
         function()
            if vim.wo.diff then return ']c' end
            vim.schedule(function() gitsigns.next_hunk() end)
            return '<Ignore>'
         end,
         { expr = true, desc = 'next hunk' } },
      { 'K',
         function()
            if vim.wo.diff then return '[c' end
            vim.schedule(function() gitsigns.prev_hunk() end)
            return '<Ignore>'
         end,
         { expr = true, desc = 'prev hunk' } },
      { 's', ':Gitsigns stage_hunk<CR>', { silent = true, desc = 'stage hunk' } },
      { 'u', gitsigns.undo_stage_hunk, { desc = 'undo last stage' } },
      { 'r', gitsigns.reset_hunk, { desc = 'reset stage' } },
      { 'S', gitsigns.stage_buffer, { desc = 'stage buffer' } },
      { 'p', gitsigns.preview_hunk, { desc = 'preview hunk' } },
      { 'd', gitsigns.toggle_deleted, { nowait = true, desc = 'toggle deleted' } },
      { 'b', gitsigns.blame_line, { desc = 'blame' } },
      { 'B', function() gitsigns.blame_line{ full = true } end, { desc = 'blame show full' } },
      { '/', gitsigns.show, { exit = true, desc = 'show base file' } }, -- show the base of the file
      { '<Enter>', '<Cmd>Neogit<CR>', { exit = true, desc = 'Neogit' } },
      { '<esc>', nil, { exit = true, nowait = true, desc = 'exit' } },
   }
})
