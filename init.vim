let $NVIM_CONFIG_PATH = stdpath('config')


nnoremap <space> <nop>
let mapleader = " "
let maplocalleader = ','

if has('win32')
    let g:python_host_prog = $USERPROFILE.'/virtualenvs/neovim2/Scripts/python.exe'
    let g:python3_host_prog = $USERPROFILE.'/virtualenvs/neovim3/Scripts/python.exe'
else
    let g:python_host_prog = $PYENV_ROOT.'/versions/neovim2/bin/python'
    let g:python3_host_prog = $PYENV_ROOT.'/versions/neovim3/bin/python'
endif


let b:ale_python_isort_auto_pipenv = 1
" disable ale lsp before loading the plugins
let g:ale_disable_lsp = 1

" use gf to open file
lua require('plugins')

" lua require('treesitter_config')
" lua require('orgmode_config')
" lua require('refactor_config')
" lua require('evilline_config')
" lua require('chadtree_config')
" lua require('toggleterm_config')
" lua require('discord_config')
" lua require('barbar_config')
" " lua require('neogit_config')


source $NVIM_CONFIG_PATH/config/general_and_keys.vim
source $NVIM_CONFIG_PATH/config/appearance.vim
" source $NVIM_CONFIG_PATH/config/lsp_and_autocompletion.vim
" source $NVIM_CONFIG_PATH/config/COQ.vim
source $NVIM_CONFIG_PATH/config/console.vim
" source $NVIM_CONFIG_PATH/config/telescope.vim
source $NVIM_CONFIG_PATH/config/terminal.vim
source $NVIM_CONFIG_PATH/config/nnn.vim
source $NVIM_CONFIG_PATH/config/ale.vim
source $NVIM_CONFIG_PATH/config/wilder.vim
source $NVIM_CONFIG_PATH/config/snippets.vim
" source $NVIM_CONFIG_PATH/config/vimspector.vim
" source $NVIM_CONFIG_PATH/config/dap.vim
source $NVIM_CONFIG_PATH/config/markdown_and_latex.vim
source $NVIM_CONFIG_PATH/config/fugitive.vim
source $NVIM_CONFIG_PATH/config/doge.vim
source $NVIM_CONFIG_PATH/config/quality_of_life.vim
source $NVIM_CONFIG_PATH/config/autocommands.vim
source $NVIM_CONFIG_PATH/config/windows_movement.vim
