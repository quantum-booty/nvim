let $NVIM_CONFIG_PATH = stdpath('config')
echo shiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii


nnoremap <space> <nop>
let mapleader = " "
let maplocalleader = ','

if has('win32')
    let g:python_host_prog = $USERPROFILE.'/virtualenvs/neovim2/Scripts/python.exe'
    let g:python3_host_prog = $USERPROFILE.'/virtualenvs/neovim3/Scripts/python.exe'
    let g:sqlite_clib_path = $NVIM_CONFIG_PATH.'/sqlite3.dll'
else
    let g:python_host_prog = $PYENV_ROOT.'/versions/neovim2/bin/python'
    let g:python3_host_prog = $PYENV_ROOT.'/versions/neovim3/bin/python'
    source $NVIM_CONFIG_PATH/config/nnn.vim
endif

" colorscheme srcery
" colorscheme nightfox
colorscheme tokyonight
" colorscheme gruvbox
" colorscheme catppuccino
" colorscheme github




" use gf to open file
:lua << EOF
require('impatient')
require('packer_compiled')
require('plugins')
require('settings')
require('mappings')
require('colourschemes')
require('autocommands')
EOF


" source $NVIM_CONFIG_PATH/config/general_and_keys.vim
" source $NVIM_CONFIG_PATH/config/appearance.vim
" source $NVIM_CONFIG_PATH/config/lsp_and_autocompletion.vim
source $NVIM_CONFIG_PATH/config/COQ.vim
" source $NVIM_CONFIG_PATH/config/console.vim
" source $NVIM_CONFIG_PATH/config/telescope.vim
" source $NVIM_CONFIG_PATH/config/terminal.vim
" TODO: migrate from ale to nvim plugins for linters and fixers?
" source $NVIM_CONFIG_PATH/config/neoformat.vim
source $NVIM_CONFIG_PATH/config/wilder.vim
" source $NVIM_CONFIG_PATH/config/snippets.vim
" source $NVIM_CONFIG_PATH/config/vimspector.vim
" source $NVIM_CONFIG_PATH/config/dap.vim
" source $NVIM_CONFIG_PATH/config/markdown_and_latex.vim
" source $NVIM_CONFIG_PATH/config/doge.vim
" source $NVIM_CONFIG_PATH/config/fugitive.vim
" source $NVIM_CONFIG_PATH/config/quality_of_life.vim
" source $NVIM_CONFIG_PATH/config/autocommands.vim
" " source $NVIM_CONFIG_PATH/config/windows_movement.vim
