require("toggleterm").setup()
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

local function _lazygit_toggle()
  lazygit:toggle()
end

vim.keymap.set("n", "<c-t>", _lazygit_toggle, {noremap = true, silent = true})
vim.keymap.set("t", "<c-t>", _lazygit_toggle, {noremap = true, silent = true})


local lazydocker = Terminal:new(
    {
        cmd = "lazydocker",
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

local function _lazydocker_toggle()
  lazydocker:toggle()
end

vim.keymap.set("n", "<c-r>", _lazydocker_toggle, {noremap = true, silent = true})
vim.keymap.set("t", "<c-r>", _lazydocker_toggle, {noremap = true, silent = true})
