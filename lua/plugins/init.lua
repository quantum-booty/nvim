local not_windows = true
local is_windows = false

return {
    -- Packer can manage itself
    'wbthomason/packer.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-lua/popup.nvim',
    'kyazdani42/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    { 'stevearc/dressing.nvim', event = 'VeryLazy',
        dependencies = 'nvim-telescope/telescope.nvim' },
    { 'nvim-lualine/lualine.nvim', config = function() require('plugins.configs.lualine') end },

    -- colour schemes
    { 'navarasu/onedark.nvim', lazy = true,
        config = function() require('plugins.configs.colours.onedark') end },
    { 'rebelot/kanagawa.nvim', lazy = true,
        config = function() require('plugins.configs.colours.kanagawa') end },
    { 'rmehri01/onenord.nvim', lazy = true,
        config = function() require('plugins.configs.colours.onenord') end },
    {
        'EdenEast/nightfox.nvim',
        lazy = true,
        config = function() require('plugins.configs.colours.nightfox') end,
        build = ':NightfoxCompile',
    },
    {
        "catppuccin/nvim",
        lazy = true,
        name = "catppuccin",
        build = ":CatppuccinCompile",
        config = function() require('plugins.configs.colours.catppuccin') end,
    },
    { 'rose-pine/neovim', lazy = true, name = 'rose-pine',
        config = { dark_variant = 'moon', disable_italics = true } },
    { 'folke/tokyonight.nvim', lazy = true },
    { 'tiagovla/tokyodark.nvim', lazy = true },
    { 'nyoom-engineering/oxocarbon.nvim', lazy = true },

    -- cosmetics
    { 'NvChad/nvim-colorizer.lua', config = true },
    { 'lukas-reineke/indent-blankline.nvim', config = function() require 'plugins.configs.indent_blankline' end,
        dependencies = 'nvim-treesitter/nvim-treesitter' },
    { 'folke/todo-comments.nvim', config = true },
    { 'goolord/alpha-nvim', config = function() require('plugins.configs.alpha') end },
    { 'akinsho/bufferline.nvim', event = "BufReadPre", version = "*",
        config = function() require('plugins.configs.bufferline') end },
    { 'ojroques/nvim-bufdel', config = function() require('plugins.configs.bufdel') end },
    { 'b0o/incline.nvim', config = function() require('plugins.configs.incline') end },
    { 'petertriho/nvim-scrollbar', config = function() require('plugins.configs.scrollbar') end },

    -- motion
    { 'numToStr/Comment.nvim', event = "BufReadPre", config = true },
    'tpope/vim-repeat',
    { 'kylechui/nvim-surround', config = true },
    { 'wellle/targets.vim', event = 'CursorMoved' },
    {
        'ggandor/leap.nvim',
        dependencies = 'ggandor/flit.nvim',
    },

    -- lsp, autocompletion
    {
        'neovim/nvim-lspconfig',
        event = "BufReadPre",
        config = function() require('plugins.configs.lsp') end,
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
            'folke/neodev.nvim',
            'mfussenegger/nvim-dap',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'simrat39/rust-tools.nvim',
            'Hoffs/omnisharp-extended-lsp.nvim',
            'jose-elias-alvarez/typescript.nvim',
            'folke/neodev.nvim',
            -- 'ionide/Ionide-vim',
            -- 'scalameta/nvim-metals',
        }
    },
    {
        'saecki/crates.nvim',
        event = { "BufRead Cargo.toml" },
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = true,
    },
    { 'folke/lsp-trouble.nvim', event = "BufReadPre", config = function() require 'plugins.configs.trouble' end },
    { 'ray-x/lsp_signature.nvim', event = "BufReadPre", dependencies = 'neovim/nvim-lspconfig',
        config = function() require('plugins.configs.lspsignature') end },
    { 'simrat39/symbols-outline.nvim', config = function() require('plugins.configs.symbols_outline') end },
    { url = 'https://git.sr.ht/~whynothugo/lsp_lines.nvim', name = 'lsp_lines' },

    {
        'hrsh7th/nvim-cmp',
        event = "BufReadPre",
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
    { 'j-hui/fidget.nvim', config = true, enabled = is_windows },
    { 'sbdchd/neoformat', config = function() require('plugins.configs.neoformat') end },
    { 'mfussenegger/nvim-lint', config = function() require('plugins.configs.nvimlint') end },


    -- snippets
    'quantum-booty/friendly-snippets',
    { 'L3MON4D3/LuaSnip', event = "BufReadPre" },

    -- Debugger
    {
        'mfussenegger/nvim-dap',
        event = "BufReadPre",
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

    { 'nyngwang/NeoZoom.lua', event = "BufReadPre", config = function() require('plugins.configs.neozoom') end },

    -- Fuzzy finder & project navigation
    {
        'nvim-telescope/telescope.nvim',
        config = function() require('plugins.configs.telescope') end,
        dependencies = {
            'folke/lsp-trouble.nvim',
            'nvim-telescope/telescope-live-grep-args.nvim',
            'natecraddock/telescope-zf-native.nvim',
            'ahmedkhalf/project.nvim',
        }
    },
    { 'ThePrimeagen/harpoon', config = function() require('plugins.configs.harpoon') end, },
    {
        'nvim-pack/nvim-spectre',
        lazy = true,
        config = { default = { replace = { cmd = not_windows and "oxi" or "sed" } } },
        build = not_windows and "./build.sh" or ""
    },


    { 'kyazdani42/nvim-tree.lua', config = function() require('plugins.configs.nvim_tree') end },

    { 'sindrets/diffview.nvim', event = "BufReadPre", config = function() require 'plugins.configs.diffview' end },
    { 'lewis6991/gitsigns.nvim', event = "BufReadPre", config = function() require 'plugins.configs.gitsigns' end },
    { 'akinsho/toggleterm.nvim', config = function() require 'plugins.configs.toggleterm' end },


    -- language support / syntax highlighting
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function() require('plugins.configs.treesitter') end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
            'nvim-treesitter/nvim-treesitter-refactor',
            'p00f/nvim-ts-rainbow',
            { 'nvim-treesitter/nvim-treesitter-context', config = true },

        }
    },
    { 'windwp/nvim-autopairs', event = "BufReadPre", config = true },

    {
        'ThePrimeagen/refactoring.nvim',
        event = "BufReadPre",
        config = function() require('plugins.configs.refactor') end,
        dependencies = 'nvim-telescope/telescope.nvim'
    },
    { 'Vimjas/vim-python-pep8-indent', ft = { 'python' } },

    -- document generator
    { 'danymat/neogen', config = function() require('plugins.configs.neogen') end },

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
    { 'nvim-neorg/neorg', config = function() require('plugins.configs.neorg') end },
    -- { 'nvim-neorg/neorg-telescope' }
    -- { 'quantum-booty/neorg-trouble' }
    -- 'godlygeek/tabular'
    -- 'plasticboy/vim-markdown'
    -- { 'iamcco/markdown-preview.nvim',  build = 'cd app && yarn install' }
    -- { 'lervag/vimtex', config = [[vim.cmd('source $NVIM_CONFIG_PATH/config/vimtex.vim')]] }
    -- 'KeitaNakamura/tex-conceal.vim'
}
