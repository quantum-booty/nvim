vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.env.NVIM_CONFIG_PATH = vim.fn.stdpath('config')

if vim.fn.has('win32') == 1 then
    USERPROFILE = vim.env.USERPROFILE
    if USERPROFILE then
        vim.g.python_host_prog = USERPROFILE..'/virtualenvs/neovim2/Scripts/python.exe'
        vim.g.python3_host_prog = USERPROFILE..'/virtualenvs/neovim3/Scripts/python.exe'
    end
else
    vim.g.python_host_prog = os.getenv('PYENV_ROOT')..'/versions/neovim2/bin/python'
    vim.g.python3_host_prog = os.getenv('PYENV_ROOT')..'/versions/neovim3/bin/python'
end

vim.cmd([[
    " Hide ~ for empty buffer line
    let &fcs='eob: '
    filetype plugin on
    let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
]])

vim.opt.diffopt:append({ 'linematch:60' })

local options = {
    -- laststatus = 0, -- no status
    laststatus = 3, -- global statusline
    cmdheight = 1,
    ruler = false,

    relativenumber = true,
    number = true,
    colorcolumn = '80',
    termguicolors = true,
    background = 'dark',
    cursorline = true,
    pumheight = 15, -- max number of popup or completion items

    autoindent = true,
    smartindent = true,
    fileformat = 'unix',
    fixendofline = false,
    endofline = false,
    fileencodings = "utf-8",
    wrap = false,
    lazyredraw = false,

    errorbells = false,
    scrolloff = 8,
    sidescrolloff = 8,
    showmode = false,
    showmatch = true,
    clipboard = 'unnamedplus', --use the system register
    mouse = 'a',

    -- Permanent undo
    undodir = vim.fn.stdpath('data').."/undodir",
    undofile = true,
    swapfile = false,

    -- tabs
    shiftwidth = 4,
    softtabstop = 4,
    tabstop = 4,
    expandtab = true,

    -- better session management
    sessionoptions="blank,buffers,curdir,folds,help,options,tabpages,winsize,resize,winpos,terminal",

    -- =============================================================================
    -- # Search settings
    -- =============================================================================
    -- Proper search
    ignorecase = true,
    smartcase  = true,
    incsearch  = true,
    hlsearch = false,

    -- live substitution
    inccommand = 'split',

    -- magic regex please!
    magic = true,

    -- auto relaoad file
    autoread = true,
}
for i, option in pairs(options) do
    vim.opt[i] = option
end
