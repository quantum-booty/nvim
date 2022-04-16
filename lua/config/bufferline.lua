local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<C-j>', ':BufferLineCyclePrev<CR>', opts)
map('n', '<C-k>', ':BufferLineCycleNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-j>', ' :BufferLineMovePrev<CR>', opts)
map('n', '<A-k>', ':BufferLineMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<m-m>', ':BufferLineGoToBuffer 1<CR>', opts)
map('n', '<m-l>', ':BufferLineGoToBuffer 2<CR>', opts)
map('n', '<m-f>', ':BufferLineGoToBuffer 3<CR>', opts)
map('n', '<m-t>', ':BufferLineGoToBuffer 4<CR>', opts)
map('n', '<m-r>', ':BufferLineGoToBuffer 5<CR>', opts)
map('n', '<m-s>', ':BufferLineGoToBuffer 6<CR>', opts)
map('n', '<m-d>', ':BufferLineGoToBuffer 7<CR>', opts)
map('n', '<m-n>', ':BufferLineGoToBuffer 8<CR>', opts)
map('n', '<m-c>', ':BufferLineGoToBuffer 9<CR>', opts)
-- pick buffer
map('n', '<C-s>', ':BufferLinePick<CR>', opts)


require('bufferline').setup {
    options = {
        numbers = function(opts)
            return string.format('%s', opts.ordinal)
        end,
        offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "center"}},
        separator_style = "slant",
        -- tab_size=14,
        -- groups = {
        --     options = {
        --         toggle_hidden_on_enter = true -- when you re-enter a hidden group this options re-opens that group so the buffer is visible
        --     },
        --     items = {
        --         {
        --             name = "Tests", -- Mandatory
        --             highlight = {guisp = "#D57780"}, -- Optional
        --             priority = 2, -- determines where it will appear relative to other groups (Optional)
        --             matcher = function(buf) -- Mandatory%
        --                 return buf.filename:match('test_.*') or buf.filename:match('%_test')
        --             end,
        --         },
        --         {
        --             name = "Src",
        --             highlight = {guisp = "#1e81b0"}, -- Optional
        --             priority=1,
        --             matcher = function(buf)
        --                 return buf.filename:match('%.py') or buf.filename:match('%.lua') or buf.filename:match('%.c#')
        --             end,
        --         },
        --         {
        --             name = "Misc",
        --             highlight = {guisp = "#a4c0a3"}, -- Optional
        --             priority=3,
        --             matcher = function(buf)
        --                 return buf.filename:match('.*')
        --             end,
        --         },
        --
        --     }
        -- }

-- diagnostics = "nvim_lsp",
-- diagnostics_indicator = function(count, level, diagnostics_dict, context)
--     local s = " "
--     for e, n in pairs(diagnostics_dict) do
--         local sym = e == "error" and " "
--             or (e == "warning" and " " or "" )
--         s = s .. n .. sym
--     end
--     return s
-- end,p

    },
    highlights = {
        buffer_selected = {
            guifg = '#c678dd'
        },
        numbers_selected = {
            guifg = '#c678dd'
        },
        buffer = {
            guifg = 'LightBlue'
        },
        modified = {
            guifg = '#D57780',
        },
        modified_visible = {
            guifg = '#D57780',
        },
        modified_selected = {
            guifg = '#D57780',
        },
    },
}
