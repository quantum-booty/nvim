vim.env.NVIM_CONFIG_PATH = vim.fn.stdpath('config')

require('impatient')
require('settings')
require('plugins')
require('mappings')
require('colourschemes')
require('autocommands')
require('packer_compiled')

vim.cmd([[source $NVIM_CONFIG_PATH/config/wilder.vim]])
