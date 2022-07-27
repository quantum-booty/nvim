local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new(
    {
        cmd = "lazygit",
        hidden = true,
        direction = "float",
        on_open = function()
            if vim.fn.has 'win32' == 1 then
                vim.cmd([[startinsert]])
            end
        end,
        float_opts = {
            width = function()
                return vim.o.columns
            end,
            height = function()
                return vim.o.lines
            end,
        },
    })

require("toggleterm").setup()

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<c-t>", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<c-t>", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
