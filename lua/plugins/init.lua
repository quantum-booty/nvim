local not_windows = require('utils').not_windows
local is_windows = require('utils').is_windows

return {
    'folke/lazy.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-lua/popup.nvim',
    'kyazdani42/nvim-web-devicons',
    { 'MunifTanjim/nui.nvim', event = 'VeryLazy' },
    { 'stevearc/dressing.nvim', event = 'VeryLazy', config = function() require('plugins.configs.dressing') end },
    { 'nvim-lualine/lualine.nvim', event = 'VeryLazy', config = function() require('plugins.configs.lualine') end },

    -- cosmetics
    { 'NvChad/nvim-colorizer.lua', event = 'BufReadPre', config = true },
    { 'lukas-reineke/indent-blankline.nvim', event = 'BufReadPre',
        config = function() require 'plugins.configs.indent_blankline' end,
    },
    { 'folke/todo-comments.nvim', event = 'BufReadPre', config = true },
    { 'goolord/alpha-nvim', config = function() require('plugins.configs.alpha') end },
    { 'akinsho/bufferline.nvim', event = 'BufReadPre', version = '*',
        config = function() require('plugins.configs.bufferline') end },
    { 'ojroques/nvim-bufdel', event = 'BufReadPre', config = function() require('plugins.configs.bufdel') end },
    { 'b0o/incline.nvim', event = 'BufReadPre', config = function() require('plugins.configs.incline') end },
    { 'petertriho/nvim-scrollbar', event = 'BufReadPre', config = function() require('plugins.configs.scrollbar') end },

    -- motion
    { 'numToStr/Comment.nvim', event = 'BufReadPre', config = true },
    { 'tpope/vim-repeat', event = 'CursorMoved' },
    { 'kylechui/nvim-surround', config = true, event = 'BufReadPre' },
    { 'wellle/targets.vim', event = 'CursorMoved' },
    {
        'ggandor/leap.nvim',
        event = 'VeryLazy',
        dependencies = 'ggandor/flit.nvim',
        config = function() require('plugins.configs.leap') end,
    },

    -- lsp, autocompletion
    {
        'neovim/nvim-lspconfig',
        event = 'BufReadPre',
        config = function() require('plugins.configs.lsp') end,
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'quantum-booty/lsp_lines.nvim',
            'folke/neodev.nvim',
            'mfussenegger/nvim-dap',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'simrat39/rust-tools.nvim',
            'Hoffs/omnisharp-extended-lsp.nvim',
            'jose-elias-alvarez/typescript.nvim',
            -- 'ionide/Ionide-vim',
            -- 'scalameta/nvim-metals',
        }
    },
    {
        'saecki/crates.nvim',
        event = { 'BufRead Cargo.toml' },
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = true,
    },
    { 'folke/trouble.nvim', event = 'CursorMoved', config = function() require 'plugins.configs.trouble' end },
    { 'ray-x/lsp_signature.nvim', event = 'InsertEnter', dependencies = 'neovim/nvim-lspconfig',
        config = function() require('plugins.configs.lspsignature') end },
    { 'simrat39/symbols-outline.nvim',
        config = function() require('plugins.configs.symbols_outline') end,
        keys = { { '<leader>a' } },
    },
    { 'quantum-booty/lsp_lines.nvim', event = 'BufReadPre', config = function() require('plugins.configs.lsp_lines') end },

    {
        'hrsh7th/nvim-cmp',
        event = { 'InsertEnter', 'CmdLineEnter' },
        config = function() require('plugins.configs.cmp') end,
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'saadparwaiz1/cmp_luasnip',
            'onsails/lspkind-nvim',
        },
    },
    { 'j-hui/fidget.nvim', event = 'BufReadPre', config = true, enabled = is_windows },
    { 'sbdchd/neoformat', event = 'BufReadPre', config = function() require('plugins.configs.neoformat') end },
    { 'mfussenegger/nvim-lint', event = 'BufReadPre', config = function() require('plugins.configs.nvimlint') end },

    -- snippets
    { 'L3MON4D3/LuaSnip', event = 'InsertEnter', dependencies = 'quantum-booty/friendly-snippets',
        config = function() require('plugins.configs.luasnips') end },

    -- Debugger
    {
        'mfussenegger/nvim-dap',
        event = 'BufReadPre',
        ft = { 'rust' },
        dependencies = {
            'mfussenegger/nvim-dap-python',
            'theHamsta/nvim-dap-virtual-text',
            'rcarriga/nvim-dap-ui',
            'nvim-telescope/telescope-dap.nvim',
        },
        config = function() require('plugins.configs.dap') end,
        enabled = not_windows,
    },

    { 'nyngwang/NeoZoom.lua', event = 'CursorMoved', config = function() require('plugins.configs.neozoom') end },

    -- Fuzzy finder & project navigation
    {
        'nvim-telescope/telescope.nvim',
        config = function() require('plugins.configs.telescope') end,
        dependencies = {
            'folke/trouble.nvim',
            'nvim-telescope/telescope-live-grep-args.nvim',
            'natecraddock/telescope-zf-native.nvim',
            'ahmedkhalf/project.nvim',
        },
        keys = { { '<leader>p' }, { '_' }, { '<C-p>' } },
        cmd = 'Telescope',
    },
    { 'ThePrimeagen/harpoon', config = function() require('plugins.configs.harpoon') end, },
    {
        'nvim-pack/nvim-spectre',
        cmd = 'Spectre',
        opts = { default = { replace = { cmd = not_windows and 'oxi' or 'sed' } } },
        build = not_windows and './build.sh' or ''
    },


    {
        'kyazdani42/nvim-tree.lua',
        keys = { { '<leader>v' } },
        config = function() require('plugins.configs.nvim_tree') end
    },

    { 'sindrets/diffview.nvim', event = 'BufReadPre', config = function() require 'plugins.configs.diffview' end },
    { 'lewis6991/gitsigns.nvim', event = 'BufReadPre', config = function() require 'plugins.configs.gitsigns' end },
    { 'akinsho/toggleterm.nvim', config = function() require 'plugins.configs.toggleterm' end },


    -- language support / syntax highlighting
    {
        'nvim-treesitter/nvim-treesitter',
        event = 'BufReadPost',
        build = ':TSUpdate',
        config = function() require('plugins.configs.treesitter') end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
            'nvim-treesitter/nvim-treesitter-refactor',
            'mrjones2014/nvim-ts-rainbow',
            { 'nvim-treesitter/nvim-treesitter-context', config = true },

        }
    },
    { 'windwp/nvim-autopairs', event = 'InsertEnter', config = true },

    {
        'ThePrimeagen/refactoring.nvim',
        event = 'CursorMoved',
        config = function() require('plugins.configs.refactor') end,
        dependencies = 'nvim-telescope/telescope.nvim'
    },
    { 'Vimjas/vim-python-pep8-indent', ft = { 'python' } },

    -- document generator
    { 'danymat/neogen', config = function() require('plugins.configs.neogen') end, cmd = 'Neogen' },

    --- Quality of life
    'antoinemadec/FixCursorHold.nvim',
    -- 'anuvyklack/hydra.nvim',
    { 'mbbill/undotree',
        config = function() vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true }) end,
        cmd = 'UndotreeToggle' },
    -- {
    --     'andweeb/presence.nvim',
    --     config = function() require('plugins.config.discord') end,
    --     enabled = not_windows,
    -- }

    -- ---  Note taking, tex, orgmode
    { 'nvim-neorg/neorg', event = 'BufWinEnter', ft = 'norg', config = function() require('plugins.configs.neorg') end },
    -- { 'lervag/vimtex', config = [[vim.cmd('source $NVIM_CONFIG_PATH/config/vimtex.vim')]] }
    -- 'KeitaNakamura/tex-conceal.vim'
}
