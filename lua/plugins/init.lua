local not_windows = require('utils').not_windows
local is_windows = require('utils').is_windows

return {
    'folke/lazy.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-lua/popup.nvim',
    'nvim-tree/nvim-web-devicons',
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
        event = { 'BufReadPre', 'BufNewFile' },
        config = function() require('plugins.configs.lsp') end,
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
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
    -- { 'VidocqH/lsp-lens.nvim', event = 'BufReadPre', config = true },
    {
        'saecki/crates.nvim',
        event = { 'BufRead Cargo.toml' },
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = true,
    },
    { 'folke/trouble.nvim', event = 'CursorMoved', config = function() require 'plugins.configs.trouble' end },
    { 'ray-x/lsp_signature.nvim', dependencies = 'neovim/nvim-lspconfig',
        config = function() require('plugins.configs.lspsignature') end },
    { 'simrat39/symbols-outline.nvim',
        config = function() require('plugins.configs.symbols_outline') end,
        keys = { { '<leader>a' } },
    },
    { 'quantum-booty/lsp_lines.nvim', event = 'BufReadPre', config = function() require('plugins.configs.lsp_lines') end },

    {
        'hrsh7th/nvim-cmp',
        version = false,
        event = 'InsertEnter',
        config = function() require('plugins.configs.cmp') end,
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'saadparwaiz1/cmp_luasnip',
            'onsails/lspkind-nvim',
        },
    },
    { 'j-hui/fidget.nvim', event = 'BufReadPre', config = true, enabled = is_windows },
    { 'sbdchd/neoformat', event = 'BufReadPre', config = function() require('plugins.configs.neoformat') end },
    { 'mfussenegger/nvim-lint', event = 'BufReadPre', config = function() require('plugins.configs.nvimlint') end },
    { "zbirenbaum/copilot.lua", event = "InsertEnter", config = function() require('plugins.configs.copilot') end, enabled = is_windows },

    -- snippets
    { 'L3MON4D3/LuaSnip', event = 'BufReadPre', dependencies = 'quantum-booty/friendly-snippets',
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
        opts = true,
        -- build = not_windows and './build.sh' or ''
    },


    {
        'nvim-tree/nvim-tree.lua',
        keys = { { '<leader>v' } },
        config = function() require('plugins.configs.nvim_tree') end
    },
    { 'echasnovski/mini.nvim', version = false, config = function() require('plugins.configs.mini') end },

    { 'sindrets/diffview.nvim', event = 'BufReadPre', config = function() require 'plugins.configs.diffview' end },
    { 'lewis6991/gitsigns.nvim', event = 'BufReadPre', config = function() require 'plugins.configs.gitsigns' end },
    { 'akinsho/toggleterm.nvim', config = function() require 'plugins.configs.toggleterm' end },
    {
        "luukvbaal/statuscol.nvim",
        event = "VimEnter",
        config = function() require('plugins.configs.statuscol_config') end
    },


    -- language support / syntax highlighting
    {
        'nvim-treesitter/nvim-treesitter',
        event = 'BufReadPost',
        build = ':TSUpdate',
        config = function() require('plugins.configs.treesitter') end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
            'HiPhish/nvim-ts-rainbow2',
            { 'nvim-treesitter/nvim-treesitter-context', config = true },

        }
    },
    { 'RRethy/vim-illuminate', event = 'CursorMoved', config = function() require('plugins.configs.vim_illuminate') end },
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
    { 'iamcco/markdown-preview.nvim', event = 'VeryLazy', build = 'cd app && npm install',
        config = function() vim.g.mkdp_filetypes = { 'markdown' } end, ft = 'markdown', cmd = 'MarkdownPreviewToggle' },
    { 'ekickx/clipboard-image.nvim', event = 'VeryLazy', ft = 'markdown' },
    -- { 'lervag/vimtex', config = [[vim.cmd('source $NVIM_CONFIG_PATH/config/vimtex.vim')]] }
    -- 'KeitaNakamura/tex-conceal.vim'
}
