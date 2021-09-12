return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- prerequists for lua plugins
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'kyazdani42/nvim-web-devicons'


    -- colour schemes
    use 'srcery-colors/srcery-vim'
    use 'gruvbox-community/gruvbox'
    use 'folke/tokyonight.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'Pocco81/Catppuccino.nvim'

    -- cosmetics
    use 'lukas-reineke/indent-blankline.nvim'
    use { 'folke/todo-comments.nvim', config = function() require("todo-comments").setup{} end }
    use { 'jmckiern/vim-venter', config = function() vim.api.nvim_set_keymap('n', '<leader>go', ':VenterToggle<CR>', {noremap = true}) end}
    use { 'karb94/neoscroll.nvim', config = function() require'neoscroll'.setup{} end }
    use 'glepnir/galaxyline.nvim'
    use 'romgrk/barbar.nvim'

    -- Consoles for interactive development
    -- use 'untitled-ai/jupyter_ascending.vim'
    use { 'jupyter-vim/jupyter-vim', opt=true }
    use 'jalvesaq/Nvim-R'
    use "akinsho/toggleterm.nvim"

    -- SQL
    -- use 'tpope/vim-dadbod'
    -- use 'kristijanhusak/vim-dadbod-ui'
    use 'jsborjesson/vim-uppercase-sql'


    -- --- Motion and textobjects
    vim.g.kommentary_create_default_mappings = false
    use 'b3nj5m1n/kommentary'
    use 'tpope/vim-repeat'
    use 'tpope/vim-surround'
    use 'phaazon/hop.nvim'
    use 'wellle/targets.vim'


    -- --- lsp, autocompletion, linter, fixer
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'

    use { 'glepnir/lspsaga.nvim', config = function() require'lspsaga'.init_lsp_saga() end }
    use 'folke/lsp-trouble.nvim'
    vim.api.nvim_set_keymap('n', '<leader>z', '<cmd>LspTroubleToggle<cr>', { noremap = true })
    use 'romgrk/fzy-lua-native'
    use { 'gelguy/wilder.nvim', run = ':UpdateRemotePlugins' }
    use {'ray-x/lsp_signature.nvim', config = function() require'lsp_signature'.setup() end }
    use 'simrat39/symbols-outline.nvim'

    use { 'ms-jpq/coq_nvim', branch = 'coq'} -- main one
    use { 'ms-jpq/coq.artifacts', branch= 'artifacts'} -- 9000+ Snippets

    use { "hrsh7th/nvim-cmp" }
    use { "hrsh7th/cmp-nvim-lsp" }
    use { "hrsh7th/cmp-buffer" }

    use 'w0rp/ale'


    -- snippets
    -- use 'honza/vim-snippets'
    use 'sirver/ultisnips'


    -- --- Debugger
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-dap-python'
    use 'theHamsta/nvim-dap-virtual-text'
    use 'rcarriga/nvim-dap-ui'

    -- use 'puremourning/vimspector'
    use 'szw/vim-maximizer'

    -- --- Fuzzy finder & project navigation
    use 'nvim-telescope/telescope.nvim'
    use 'ahmedkhalf/project.nvim'

    use { 'ms-jpq/chadtree', branch = 'chad', run = 'python -m chadtree deps' }
    use 'mcchrish/nnn.vim'


    -- --- Git & project management & file browser
    use 'tpope/vim-fugitive'
    -- use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
    use { 'lewis6991/gitsigns.nvim', config = function() require('gitsigns').setup() end }
    use 'mbbill/undotree'
    vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeShow<CR>', { noremap = true })



    -- --- language support / syntax highlighting
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'nvim-treesitter/nvim-treesitter-textobjects', requires = 'nvim-treesitter'}
    use { 'nvim-treesitter/nvim-treesitter-refactor', requires = 'nvim-treesitter' }
    use { 'nvim-treesitter/completion-treesitter', requires = 'nvim-treesitter' }
    -- treesitter context don't yet work on windows
    use {
        'romgrk/nvim-treesitter-context',
        requires = 'nvim-treesitter',
        cond = function()
            return vim.fn.has 'win32' ~= 1
        end,
    }
    use 'p00f/nvim-ts-rainbow'
    use 'ThePrimeagen/refactoring.nvim'


    -- document generator
    use { 'kkoomen/vim-doge', run = ':call doge#install()' }


    -- --- Quality of life
    use { 'folke/which-key.nvim', config = function() require'which-key'.setup{} end }
    use 'glepnir/dashboard-nvim'
    -- use 'gioele/vim-autoswap' -- handles the swaps unannoyingly!
    use 'tpope/vim-obsession' -- session management
    -- use 'rmagatti/auto-session'
    use { 'windwp/nvim-autopairs', config = function() require('nvim-autopairs').setup() end }
    use 'andweeb/presence.nvim' -- Lets be edgy on Discord!
    use { 'rcarriga/nvim-notify', config = function() vim.notify = require('notify') end }

    -- ---  Note taking, tex, orgmode
    use 'godlygeek/tabular'
    use 'plasticboy/vim-markdown'
    use { 'iamcco/markdown-preview.nvim',  run = 'cd app && yarn install' }
    use 'lervag/vimtex'
    use 'KeitaNakamura/tex-conceal.vim'
    use { 'vhyrro/neorg', branch = 'unstable' }



end)
