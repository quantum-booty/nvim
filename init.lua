vim.env.NVIM_CONFIG_PATH = vim.fn.stdpath('config')


if vim.fn.has('win32') == 1 then
    USERPROFILE = vim.env.USERPROFILE
    if USERPROFILE then
        vim.g.python_host_prog = USERPROFILE..'/virtualenvs/neovim2/Scripts/python.exe'
        vim.g.python3_host_prog = USERPROFILE..'/virtualenvs/neovim3/Scripts/python.exe'
        vim.g.sqlite_clib_path = NVIM_CONFIG_PATH..'/sqlite3.dll'
    end
else
    vim.g.python_host_prog = os.getenv('PYENV_ROOT')..'/versions/neovim2/bin/python'
    vim.g.python3_host_prog = os.getenv('PYENV_ROOT')..'/versions/neovim3/bin/python'
end




require('impatient')
require('plugins')
require('settings')
require('mappings')
require('colourschemes')
require('autocommands')
require('packer_compiled')
