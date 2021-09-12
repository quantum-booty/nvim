local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<C-j>', ':BufferPrevious<CR>', opts)
map('n', '<C-k>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-j>', ':BufferMovePrevious<CR>', opts)
map('n', '<A-k>', ' :BufferMoveNext<CR>', opts)
-- -- Goto buffer in position...
-- map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
-- map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
-- map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
-- map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
-- map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
-- map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
-- map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
-- map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
-- map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
-- map('n', '<A-0>', ':BufferLast<CR>', opts)
-- Close buffer
map('n', '<leader>x', ':BufferClose<CR>', opts)
map('n', '<leader>X', ':BufferCloseAllButCurrent<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
map('n', '<C-s>', ':BufferPick<CR>', opts)
-- -- Sort automatically by...
-- map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
-- map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
-- map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)



-- Set barbar's options
vim.g.bufferline = {

  -- If true, new buffers will be inserted at the end of the list.
  -- Default is to insert after current buffer.
  insert_at_end = false,

  -- Sets the maximum padding width with which to surround each tab
  maximum_padding = 1,

  -- New buffer letters are assigned in this order. This order is
  -- optimal for the qwerty keyboard layout but might need adjustement
  -- for other layouts.
  -- letters = 'abcdefghijkmlnopqrstuvwxyz',
  -- letters = 'trspkjdncbmlfaeihuoyqwgzxv',
}
