local not_windows = require('utils').not_windows

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- prerequists for lua plugins
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'kyazdani42/nvim-web-devicons'


    -- colour schemes
    use { 'srcery-colors/srcery-vim',
        'gruvbox-community/gruvbox',
        'folke/tokyonight.nvim',
        'EdenEast/nightfox.nvim',
        'Pocco81/Catppuccino.nvim',
        "projekt0n/github-nvim-theme",
    }
    -- cosmetics
    use 'lukas-reineke/indent-blankline.nvim'
    use { 'folke/todo-comments.nvim', config = [[require("todo-comments").setup{}]] }
    use { 'jmckiern/vim-venter', config = function() vim.api.nvim_set_keymap('n', '<leader>go', ':VenterToggle<CR>', {noremap = true}) end }
    use { 'karb94/neoscroll.nvim', config = [[require'neoscroll'.setup{}]] }
    -- use { 'glepnir/galaxyline.nvim', config = [[require('config.galaxyline')]]}
    -- use { 'NTBBloodbath/galaxyline.nvim', config = [[require("galaxyline.themes.eviline")]]}
    use { 'NTBBloodbath/galaxyline.nvim', config = [[require("galaxyline.themes.spaceline")]] }
    use { 'romgrk/barbar.nvim', config = [[require('config.barbar')]] }
    use { 'glepnir/dashboard-nvim', config = [[require('config.dashboard')]] }
    use { 'GustavoKatel/sidebar.nvim', config = [[require('config.sidebar')]] }

    -- Consoles for interactive development
    -- use 'untitled-ai/jupyter_ascending.vim'
    use { 'jupyter-vim/jupyter-vim', opt=true }
    -- use 'jalvesaq/Nvim-R'
    use { "akinsho/toggleterm.nvim", config = [[require('config.toggleterm')]] }


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


    -- --- lsp, autocompletion
    use { 'neovim/nvim-lspconfig', config = [[require('config.lsp')]] }
    -- use 'kabouzeid/nvim-lspinstall'

    use { 'glepnir/lspsaga.nvim', config = [[require'lspsaga'.init_lsp_saga()]] }
    use {
        'folke/lsp-trouble.nvim',
        config = function()
            vim.api.nvim_set_keymap('n', '<leader>z', '<cmd>LspTroubleToggle<cr>', { noremap = true })
        end
    }
    -- use 'romgrk/fzy-lua-native'
    use { 'gelguy/wilder.nvim', run = ':UpdateRemotePlugins', requires='romgrk/fzy-lua-native' }
    -- TODO: maybe turn off for windows?
    use { 'ray-x/lsp_signature.nvim', config = [[require('config.lspsignature')]] }
    use { 'simrat39/symbols-outline.nvim', config = [[require('config.symbols_outline')]] }

    use {
        'ms-jpq/coq_nvim',
        branch = 'coq',
        requires = { 'ms-jpq/coq.artifacts', branch= 'artifacts' }
    }

    -- use {
    --     {"hrsh7th/nvim-cmp", config = [[require('config.cmp')]]},
    --     "hrsh7th/cmp-nvim-lsp",
    --     "hrsh7th/cmp-buffer",
    -- }

    -- linter, fixer, formatter
    use 'w0rp/ale'
    -- use 'sbdchd/neoformat'
    -- use 'neomake/neomake'


    -- snippets
    -- use 'honza/vim-snippets'
    use 'sirver/ultisnips'

    -- -- --- Debugger
    -- use {
    --     {'mfussenegger/nvim-dap', config = [[require('config.dap')]]},
    --     'mfussenegger/nvim-dap-python',
    --     'theHamsta/nvim-dap-virtual-text',
    --     'rcarriga/nvim-dap-ui',
    -- }

    -- use 'puremourning/vimspector'
    use {
    'szw/vim-maximizer',
    config = function()
        vim.g.maximizer_set_default_mapping = 0
        vim.api.nvim_set_keymap('n', '<Del>', ':MaximizerToggle<CR>', { noremap=true, silent=true })
        end
    }

    -- --- Fuzzy finder & project navigation
    use { 'nvim-telescope/telescope.nvim', config = [[require('config.telescope')]] }


    use {
        'ahmedkhalf/project.nvim',
        after = 'telescope.nvim',
        config = function()
            require('telescope').load_extension('projects')
            require("project_nvim").setup {}
        end
    }

    use {
        "nvim-telescope/telescope-frecency.nvim",
        after = 'telescope.nvim',
        config = function()
            require"telescope".load_extension("frecency")
        end,
        requires = {"tami5/sqlite.lua"},
    }
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make',
        config = [[require('telescope').load_extension('fzf')]],
        cond = not_windows,
    }


    use { 'ms-jpq/chadtree', branch = 'chad', run = 'python -m chadtree deps', config = [[require('config.chadtree')]] }
    use {
        'mcchrish/nnn.vim',
        cond = not_windows,
    }


    -- --- Git & project management
    use 'tpope/vim-fugitive'
    -- use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim', config = [[require('config.neogit')]]}
    use { 'lewis6991/gitsigns.nvim', config = [[require('gitsigns').setup()]] }
    use { 'mbbill/undotree', config = [[vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true })]]}




    -- language support / syntax highlighting
    use {
        {'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = [[require('config.treesitter')]]
    },
        'nvim-treesitter/nvim-treesitter-textobjects',
        'nvim-treesitter/nvim-treesitter-refactor',
        'nvim-treesitter/completion-treesitter',
        -- treesitter context don't yet work on windows
        {'romgrk/nvim-treesitter-context',
            cond = not_windows
        },
        'p00f/nvim-ts-rainbow',
    }
    use { 'ThePrimeagen/refactoring.nvim', config = [[require('config.refactor')]] }




    -- document generator
    use { 'kkoomen/vim-doge', run = ':call doge#install()', config = [[vim.g.doge_doc_standard_python='numpy']]}


    -- --- Quality of life
    use { 'folke/which-key.nvim', config = [[require'which-key'.setup{}]] }
    -- use 'gioele/vim-autoswap' -- handles the swaps unannoyingly!
    use {
        'tpope/vim-obsession',
        config = function()
            vim.api.nvim_set_keymap('n', '<leader>ss', ':Obsession<cr>', {noremap=true})
            vim.api.nvim_set_keymap('n', '<leader>SS', ':source Session.vim<cr>', {noremap=true})
        end
    }


    -- use 'rmagatti/auto-session'
    use { 'windwp/nvim-autopairs', config = [[require('nvim-autopairs').setup()]]}
    use {
        'andweeb/presence.nvim',
        config = [[require('config.discord')]],
        cond = not_windows,
    }
    use { 'rcarriga/nvim-notify', config = [[vim.notify = require('notify')]]}
    use { 'dstein64/vim-startuptime', cmd = 'StartupTime', config = [[vim.g.startuptime_tries = 10]] }

    -- ---  Note taking, tex, orgmode
    -- use 'godlygeek/tabular'
    -- use 'plasticboy/vim-markdown'
    -- use { 'iamcco/markdown-preview.nvim',  run = 'cd app && yarn install' }
    -- use 'lervag/vimtex'
    -- use 'KeitaNakamura/tex-conceal.vim'
    -- use { 'vhyrro/neorg', branch = 'unstable' }



end)
