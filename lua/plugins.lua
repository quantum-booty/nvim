-- install packer if not found
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    os.execute(string.format("git clone --depth 1 https://github.com/wbthomason/packer.nvim %s", install_path))
    vim.cmd 'packadd packer.nvim'
end

local not_windows = require('utils').not_windows

return require('packer').startup({function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'lewis6991/impatient.nvim'

    -- prerequists for lua plugins
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'kyazdani42/nvim-web-devicons'


    -- TODO: plugins to check out in the future
    -- remote editing
    -- http://neovimcraft.com/plugin/chipsenkbeil/distant.nvim/index.html
    -- code action - although pyright does not support code action
    -- https://github.com/weilbith/nvim-code-action-menu
    -- jupyter
    -- https://github.com/dccsillag/magma-nvim

    -- colour schemes
    use { 'srcery-colors/srcery-vim',
        -- 'gruvbox-community/gruvbox',
        {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}},
        'folke/tokyonight.nvim',
        'EdenEast/nightfox.nvim',
        'Pocco81/Catppuccino.nvim',
        "projekt0n/github-nvim-theme",
    }
    -- cosmetics
    use 'lukas-reineke/indent-blankline.nvim'
    use { 'folke/todo-comments.nvim', config = [[require("todo-comments").setup{}]] }
    use { 'jmckiern/vim-venter', config = function() vim.api.nvim_set_keymap('n', '<leader>go', ':VenterToggle<CR>', {noremap = true}) end, keys='<leader>go' }
    -- use { 'karb94/neoscroll.nvim', config = [[require'neoscroll'.setup{}]] }
    -- use { 'glepnir/galaxyline.nvim', config = [[require('config.galaxyline')]] }
    use { 'NTBBloodbath/galaxyline.nvim', config = [[require("galaxyline.themes.eviline")]] }
    -- use { 'NTBBloodbath/galaxyline.nvim', config = [[require("galaxyline.themes.spaceline")]] }
    use { 'romgrk/barbar.nvim', config = [[require('config.barbar')]] }
    -- use { 'glepnir/dashboard-nvim', setup = [[require('config.dashboard')]] }
    use { 'goolord/alpha-nvim', setup = [[vim.g.indentLine_fileTypeExclude = {'alpha'}]], config = [[require('config.alpha')]] }

    use { 'GustavoKatel/sidebar.nvim', config = [[require('config.sidebar')]] }
    use { 'norcalli/nvim-colorizer.lua', config = [[require'colorizer'.setup()]] }
    use { "kwkarlwang/bufresize.nvim", config = function() require("bufresize").setup({ resize = { keys = {}, trigger_events = { "VimResized" }, }, }) end }


    -- Consoles for interactive development
    use { 'jupyter-vim/jupyter-vim', opt=true, ft='python' }
    use { "akinsho/toggleterm.nvim", config = [[require('config.toggleterm')]] }
    -- use 'untitled-ai/jupyter_ascending.vim'
    -- use 'jalvesaq/Nvim-R'


    -- SQL
    -- use 'tpope/vim-dadbod'
    -- use 'kristijanhusak/vim-dadbod-ui'
    use { 'jsborjesson/vim-uppercase-sql', ft='sql' }

    -- --- Motion and textobjects
    use {'b3nj5m1n/kommentary',
        setup = [[vim.g.kommentary_create_default_mappings = false]],
        config = [[require('config.kommentary')]],
        keys = 'gc',
    }
    use { 'tpope/vim-repeat', event = 'InsertEnter'}
    use { 'tpope/vim-surround', config = [[require('config.surround')]], event = 'CursorMoved' }
    use { 'wellle/targets.vim', event = 'CursorMoved' }
    -- use { 'phaazon/hop.nvim', config = [[require('config.hop')]] }
    use { 'ggandor/lightspeed.nvim' }


    -- --- lsp, autocompletion
    use { 'neovim/nvim-lspconfig', config = [[require('config.lsp')]] }
    -- use 'kabouzeid/nvim-lspinstall'

    -- use { 'tami5/lspsaga.nvim', config = [[require'lspsaga'.init_lsp_saga()]] }
    use {
        'folke/lsp-trouble.nvim',
        config = function()
            vim.api.nvim_set_keymap('n', '<leader>z', '<cmd>LspTroubleToggle<cr>', { noremap = true })
        end
    }
    use { 'gelguy/wilder.nvim', run = ':UpdateRemotePlugins', requires='romgrk/fzy-lua-native' }
    use { 'ray-x/lsp_signature.nvim', config = [[require('config.lspsignature')]], event = 'InsertEnter' }
    use { 'simrat39/symbols-outline.nvim', config = [[require('config.symbols_outline')]] }

    use { 'ms-jpq/coq_nvim', branch = 'coq', config = [[require('config.coq')]] }
    use { 'ms-jpq/coq.artifacts', branch= 'artifacts' }
    -- use { 'ms-jpq/coq.thirdparty', branch = '3p' }

    -- use {
    --     {"hrsh7th/nvim-cmp", config = [[require('config.cmp')]]},
    --     "hrsh7th/cmp-nvim-lsp",
    --     "hrsh7th/cmp-buffer",
    -- }

    -- linter, fixer, formatter
    use { 'jose-elias-alvarez/null-ls.nvim', config = [[require('config.nullls')]], disable = false }
    use { 'w0rp/ale',
        setup = [[require('config.ale')]],
        disable = true
    }
    -- use 'sbdchd/neoformat'
    -- use 'neomake/neomake'
    -- use { 'mfussenegger/nvim-lint', config = [[require('config.nvimlint')]]}


    -- snippets
    use {'sirver/ultisnips', config = [[require('config.ultisnips')]] }
    -- use 'honza/vim-snippets'
    -- use 'L3MON4D3/LuaSnip'

    -- Debugger
    -- use 'puremourning/vimspector'
    use {
        'mfussenegger/nvim-dap',
        config = [[require('config.dap')]],
        ft = {'python'},
        keys = '<F5>',
        requires = {
            'mfussenegger/nvim-dap-python',
            'theHamsta/nvim-dap-virtual-text',
            'rcarriga/nvim-dap-ui',
            'nvim-telescope/telescope-dap.nvim',
        }
    }

    use {
        'szw/vim-maximizer',
        config = function()
            -- vim.g.maximizer_default_mapping_key = '<Del>'
            vim.g.maximizer_set_default_mapping = 0
            vim.api.nvim_set_keymap('n', '<Del>', ':MaximizerToggle<CR>', { noremap=true, silent=true })
        end,
    }

    -- Fuzzy finder & project navigation
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
    -- use {
    --     'mcchrish/nnn.vim',
    --     cond = not_windows,
    --     config = [[require('config.nnn')]]
    -- }
    use {
	"luukvbaal/nnn.nvim",
	config = function() require("nnn").setup() end
}


    -- Git
    use {
        'TimUntersberger/neogit',
        config = [[require('config.neogit')]],
        requires = {
            'nvim-lua/plenary.nvim',
            'sindrets/diffview.nvim'
        },
        keys='<leader>gs'
    }
    -- use { 'tpope/vim-fugitive', config = [[require('config.fugitive')]] }
    -- use { 'pwntester/octo.nvim' }
    use { 'lewis6991/gitsigns.nvim', config = [[require('gitsigns').setup()]] }


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
    use { 'kkoomen/vim-doge', run = ':call doge#install()', config = [[require('config.doge')]] }


    -- --- Quality of life
    use { 'mbbill/undotree', config = [[vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true })]] }
    use { 'folke/which-key.nvim', config = [[require'which-key'.setup{}]] }
    use {
        'tpope/vim-obsession',
        config = function()
            vim.api.nvim_set_keymap('n', '<leader>ss', ':Obsession<cr>', {noremap=true})
            vim.api.nvim_set_keymap('n', '<leader>SS', ':source Session.vim<cr>', {noremap=true})
        end
    }
    -- use 'rmagatti/auto-session'

    -- shows marks in sign column, not working with neovim
    -- use { 'kshenoy/vim-signature' }

    use { 'windwp/nvim-autopairs', config = [[require('nvim-autopairs').setup()]], event = 'InsertEnter' }
    -- use {
    --     'andweeb/presence.nvim',
    --     config = [[require('config.discord')]],
    --     cond = not_windows,
    -- }
    use { 'rcarriga/nvim-notify', config = [[vim.notify = require('notify')]] }
    use { 'dstein64/vim-startuptime', cmd = 'StartupTime', config = [[vim.g.startuptime_tries = 10]] }

    -- ---  Note taking, tex, orgmode
    -- use 'godlygeek/tabular'
    -- use 'plasticboy/vim-markdown'
    -- use { 'iamcco/markdown-preview.nvim',  run = 'cd app && yarn install' }
    -- use 'lervag/vimtex'
    -- use 'KeitaNakamura/tex-conceal.vim'
    -- use { 'vhyrro/neorg', branch = 'unstable' }
end,
    config = {
        -- Move to lua dir so impatient.nvim can cache it
        compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua',
        -- profile = {
        --     enable = true,
        --     threshold = 1, -- integer in milliseconds, plugins which load faster than this won't be shown in profile output
        -- }
    }
})
