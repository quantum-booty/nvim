local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<C-j>', ':BufferPrevious<CR>', opts)
map('n', '<C-k>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-j>', ':BufferMovePrevious<CR>', opts)
map('n', '<A-k>', ' :BufferMoveNext<CR>', opts)
-- -- Goto buffer in position...
map('n', '<m-m>', ':BufferGoto 1<CR>', opts)
map('n', '<m-l>', ':BufferGoto 2<CR>', opts)
map('n', '<m-f>', ':BufferGoto 3<CR>', opts)
map('n', '<m-t>', ':BufferGoto 4<CR>', opts)
map('n', '<m-r>', ':BufferGoto 5<CR>', opts)
map('n', '<m-s>', ':BufferGoto 6<CR>', opts)
map('n', '<m-d>', ':BufferGoto 7<CR>', opts)
map('n', '<m-n>', ':BufferGoto 8<CR>', opts)
map('n', '<m-c>', ':BufferGoto 9<CR>', opts)
map('n', '<m-cr>', ':BufferLast<CR>', opts)
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
-- map('n', '<C-s>', ':BufferPick<CR>', opts)
-- -- Sort automatically by...
-- map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
-- map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
-- map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)



-- Set barbar's options
vim.g.bufferline = {
    icons = 'both',

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

