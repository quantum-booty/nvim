vim.env.NVIM_CONFIG_PATH = vim.fn.stdpath('config')

-- disable unused build in plugins to improve start-up time
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}
for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end



vim.cmd([[
    " Hide ~ for empty buffer line
    let &fcs='eob: '
    filetype plugin on
    let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
]])

local options = {
    -- laststatus=0, -- global statusline
    laststatus=3, -- global statusline

    relativenumber = true,
    number = true,
    colorcolumn = '80',
    cmdheight = 1,
    termguicolors = true,
    background = 'dark',
    cursorline = true,
    pumheight = 15, -- max number of popup or completion items

    autoindent = true,
    smartindent = true,
    fileformat = 'unix',
    fileencodings = "utf-8",
    wrap = false,
    lazyredraw = true,

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
    backup = false,
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
