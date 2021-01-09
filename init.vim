nnoremap <space> <nop>
let mapleader = " "
let maplocalleader = ','

let g:python3_host_prog = '/home/henryw/virtualenvs/data_sci/bin/python'
au BufNewFile,BufRead *.py set filetype=python
au BufNewFile,BufRead *.jl set filetype=julia

let b:ale_python_isort_auto_pipenv = 1
" disable ale lsp before the plugins
let g:ale_disable_lsp = 1


" =============================================================================
" # Plugins
" =============================================================================
call plug#begin('~/.config/nvim/plugged')

" --- Consoles for interactive development
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'untitled-ai/jupyter_ascending.vim'
Plug 'jupyter-vim/jupyter-vim'


" Plug 'metakirby5/codi.vim'
Plug 'kassio/neoterm'

" " --- SQL
" Plug 'tpope/vim-dadbod'
" Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'jsborjesson/vim-uppercase-sql'


" --- Motion related
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'wellle/targets.vim'


" --- lsp and diagnostics
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'steelsojka/completion-buffers'
Plug 'w0rp/ale'

" Plug 'kdheepak/JuliaFormatter.vim'
" au FileType julia au BufWrite <buffer> :JuliaFormatterFormat<CR>
" let g:JuliaFormatter_options = {
"         \ 'style' : 'blue',
"         \ }
" let g:JuliaFormatter_use_sysimage=1
" let g:JuliaFormatter_always_launch_server=1

" --- Debugger
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'


" --- Fuzzy finder & project navigation
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/telescope.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'


" --- Git & project management & file browser
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-dispatch'
Plug 'mbbill/undotree'
	nnoremap <leader>u :UndotreeShow<CR>


" ---  Note taking, tex and snippets
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'vimwiki/vimwiki'
" Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim'
" Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'


" --- syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'nvim-treesitter/completion-treesitter'
Plug 'romgrk/nvim-treesitter-context'
" Plug 'p00f/nvim-ts-rainbow'
" Place polyglot below vimtex, as they are not compatible
Plug 'sheerun/vim-polyglot'
    let g:polyglot_disabled = ['latex', 'python']
Plug 'Vimjas/vim-python-pep8-indent'


" --- Appearance
Plug 'srcery-colors/srcery-vim'
Plug 'gruvbox-community/gruvbox'
Plug 'AlessandroYorba/Alduin'
Plug 'phanviet/vim-monokai-pro'
Plug 'altercation/vim-colors-solarized'
Plug 'luochen1990/rainbow'
Plug 'junegunn/goyo.vim'
Plug 'psliwka/vim-smoothie'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'glepnir/galaxyline.nvim'
Plug 'romgrk/barbar.nvim'

" --- Quality of life
Plug 'junegunn/vim-peekaboo' " view register content
Plug 'preservim/tagbar'
" Plug 'mhinz/vim-startify'
Plug 'glepnir/dashboard-nvim'
let g:dashboard_default_executive ='telescope'

Plug 'gioele/vim-autoswap' " handles the swaps unannoyingly!
" Plug 'tpope/vim-eunuch' " Unix shell commands in vim
Plug 'tpope/vim-obsession' " session management
Plug 'jiangmiao/auto-pairs'
Plug 'mcchrish/nnn.vim'
Plug 'hugolgst/vimsence' " Lets be edgy on Discord!

call plug#end()


" lua files are located in ~/.config/nvim/lua/
" use gf to open file
source ~/.config/nvim/config/console.vim
source ~/.config/nvim/config/general_and_keys.vim
source ~/.config/nvim/config/lsp_and_ale.vim
source ~/.config/nvim/config/telescope_fzf.vim
source ~/.config/nvim/config/vimspector.vim
source ~/.config/nvim/config/markups_and_snippets.vim
source ~/.config/nvim/config/appearance.vim
source ~/.config/nvim/config/git.vim
source ~/.config/nvim/config/quality_of_life.vim
" ~/.config/nvim/lua/
lua require('treesitter')
lua require('spaceline')

" =============================================================================
" # Autocommands
" =============================================================================
" Save on insert leave!
" autocmd InsertLeave * update
" inoremap <ESC> <ESC>:w<CR>

" highlight yank
autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 200})

" restore place in file from previous session
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
