if vim.fn.has('win32') == 1 then
    USERPROFILE = vim.env.USERPROFILE
    if USERPROFILE then
        vim.g.python_host_prog = USERPROFILE..'/virtualenvs/neovim2/Scripts/python.exe'
        vim.g.python3_host_prog = USERPROFILE..'/virtualenvs/neovim3/Scripts/python.exe'
        vim.g.sqlite_clib_path = vim.env.NVIM_CONFIG_PATH..'/sqlite3.dll'
    end
else
    vim.g.python_host_prog = os.getenv('PYENV_ROOT')..'/versions/neovim2/bin/python'
    vim.g.python3_host_prog = os.getenv('PYENV_ROOT')..'/versions/neovim3/bin/python'
end

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
filetype plugin on
]])

vim.o.relativenumber = true
vim.o.number = true
vim.o.colorcolumn = '80'
vim.o.cmdheight = 1
vim.o.termguicolors = true
vim.o.background = 'dark'
vim.cmd([[let &fcs='eob: ']]) -- Hide ~ for empty buffer line


vim.o.smartindent = true
vim.o.fileformat = 'unix'
vim.o.fileencodings = "utf-8"
vim.o.wrap = false
-- set linebreak
vim.o.lazyredraw = true

vim.o.errorbells = false
vim.o.scrolloff = 8
vim.o.showmode = false
vim.o.showmatch = true
vim.o.clipboard = 'unnamedplus' --use the system register
vim.o.mouse = 'a'

-- Permanent undo
vim.o.undodir = vim.fn.stdpath('data').."/undodir"
vim.o.undofile = true
vim.o.backup = false
vim.o.swapfile = false

 -- tabs
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4
vim.o.expandtab = true

-- better session management
vim.o.sessionoptions="blank,buffers,curdir,folds,help,options,tabpages,winsize,resize,winpos,terminal"

-- =============================================================================
-- # Search settings
-- =============================================================================
-- Proper search
vim.o.ignorecase = true
vim.o.smartcase  = true
vim.o.incsearch  = true
vim.o.hlsearch = false

-- live substitution
vim.o.inccommand = 'split'

-- magic regex please!
vim.o.magic = true
