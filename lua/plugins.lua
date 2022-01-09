-- install packer if not found
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    os.execute(string.format('git clone --depth 1 https://github.com/wbthomason/packer.nvim %s', install_path))
    vim.cmd 'packadd packer.nvim'
end

local not_windows = require('utils').not_windows

return require('packer').startup({function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'lewis6991/impatient.nvim'
    use { 'nathom/filetype.nvim', config = [[vim.g.did_load_filetypes = 1 -- for nvim 0.5]], cond = not_windows }
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'MunifTanjim/nui.nvim'
    use 'stevearc/dressing.nvim'
    use { 'rcarriga/nvim-notify', config = [[vim.notify = require('notify')]] }


    -- TODO: plugins to check out in the future
    -- remote editing
    -- http://neovimcraft.com/plugin/chipsenkbeil/distant.nvim/index.html

    -- colour schemes
    use { 
        'srcery-colors/srcery-vim',
        {'ellisonleao/gruvbox.nvim', requires = {'rktjmp/lush.nvim'}},
        'folke/tokyonight.nvim',
        'rebelot/kanagawa.nvim',
        'EdenEast/nightfox.nvim',
        'catppuccin/nvim',
        'projekt0n/github-nvim-theme',
        'NTBBloodbath/doom-one.nvim',
        'navarasu/onedark.nvim',
        'rmehri01/onenord.nvim',
        {'rose-pine/neovim', as = 'rose-pine'},
    }

    -- cosmetics
    use { 'norcalli/nvim-colorizer.lua', config = [[require'colorizer'.setup()]] }
    use { 'lukas-reineke/indent-blankline.nvim', config = [[require('config.indent_blankline')]] }
    use { 'folke/todo-comments.nvim', config = [[require('config.todo_comments')]] }
    use { 'NTBBloodbath/galaxyline.nvim', config = [[require('config.galaxyline.spaceline')]] }
    use { 'goolord/alpha-nvim', setup = [[vim.g.indentLine_fileTypeExclude = {'alpha'}]], config = [[require('config.alpha')]] }
    -- use { 'romgrk/barbar.nvim', config = [[require('config.barbar')]] }
    use { 'akinsho/bufferline.nvim', config = [[require('config.bufferline')]]  }
    -- use { "beauwilliams/focus.nvim", config = function() require("focus").setup() end }
    -- use { 'jmckiern/vim-venter', config = function() vim.api.nvim_set_keymap('n', '<leader>go', ':VenterToggle<CR>', {noremap = true}) end, keys='<leader>go' }
    -- use { 'karb94/neoscroll.nvim', config = [[require'neoscroll'.setup{}]] }
    -- use { 'NTBBloodbath/galaxyline.nvim', config = [[require('galaxyline.themes.eviline')]] }
    -- use { 'glepnir/dashboard-nvim', setup = [[require('config.dashboard')]] }
    -- use { 'GustavoKatel/sidebar.nvim', config = [[require('config.sidebar')]] }
    -- use { 'kwkarlwang/bufresize.nvim', config = function() require('bufresize').setup({ resize = { keys = {}, trigger_events = { 'VimResized' }, }, }) end }

    -- Consoles for interactive development
    -- use { 'jupyter-vim/jupyter-vim', opt=true, ft='python' }
    use { 'akinsho/toggleterm.nvim', config = [[require('config.toggleterm')]] }
    -- use 'jalvesaq/Nvim-R'


    -- SQL
    -- use { 'jsborjesson/vim-uppercase-sql', ft='sql' }
    -- use 'tpope/vim-dadbod'
    -- use 'kristijanhusak/vim-dadbod-ui'
    -- use 'kristijanhusak/vim-dadbod-completion'

    -- --- Motion and textobjects
    -- use {'b3nj5m1n/kommentary',
    --     setup = [[vim.g.kommentary_create_default_mappings = false]],
    --     config = [[require('config.kommentary')]],
    --     event = 'BufRead',
    -- }
    --
    use { "petertriho/nvim-scrollbar", config = [[require('config.scrollbar')]] }

    use { 'kevinhwang91/nvim-hlslens', config = [[require('config.hlslens')]] }


    use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
    use { 'tpope/vim-repeat', event = 'InsertEnter'}
    use { 'tpope/vim-surround', config = [[require('config.surround')]], event = 'CursorMoved' }
    use { 'wellle/targets.vim', event = 'CursorMoved' }
    -- use { 'phaazon/hop.nvim', config = [[require('config.hop')]] }
    use { 'ggandor/lightspeed.nvim', config = [[require('config.lightspeed')]] }

    -- --- lsp, autocompletion
    use { 'neovim/nvim-lspconfig', config = [[require('config.lsp')]] }
    -- use 'kabouzeid/nvim-lspinstall'
    -- use { 'tami5/lspsaga.nvim', config = [[require'lspsaga'.init_lsp_saga()]] }
    use { 'onsails/lspkind-nvim' }
    use { 'folke/lsp-trouble.nvim', config = [[require('config.trouble')]] }
    use { 'gelguy/wilder.nvim', run = ':UpdateRemotePlugins', requires='romgrk/fzy-lua-native', config = [[vim.cmd('source $NVIM_CONFIG_PATH/config/wilder.vim')]] }
    use { 'ray-x/lsp_signature.nvim', after = 'nvim-lspconfig', config = [[require('config.lspsignature')]] }
    -- use { 'simrat39/symbols-outline.nvim', config = [[require('config.symbols_outline')]] }
    -- use {'liuchengxu/vista.vim'}
    use {'stevearc/aerial.nvim', config = [[require('config.aerial')]]}
    -- use { 'ldelossa/calltree.nvim', config = [[require('config.calltree_config')]]}
    -- use { 'weilbith/nvim-code-action-menu', config = [[require('config.nvim_code_action_menu')]], cmd = 'CodeActionMenu' }

    -- use { 'ms-jpq/coq_nvim', branch = 'coq', config = [[require('config.coq')]] }
    -- use { 'ms-jpq/coq.artifacts', branch= 'artifacts' }
    -- use { 'ms-jpq/coq.thirdparty', branch = '3p' }

    use {
        {'hrsh7th/nvim-cmp', config = [[require('config.cmp_')]] },
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-path',
        -- 'hrsh7th/cmp-cmdline',
        'quangnguyen30192/cmp-nvim-ultisnips',
        'lukas-reineke/cmp-under-comparator',
    }

    use { 'github/copilot.vim', config = [[vim.cmd('source $NVIM_CONFIG_PATH/config/copilot.vim')]]  }
    -- linter, fixer, formatter
    use { 'jose-elias-alvarez/null-ls.nvim', config = [[require('config.nullls')]] }
    use { 'mfussenegger/nvim-lint', config = [[require('config.nvimlint')]]}
    -- use 'sbdchd/neoformat'
    -- use 'neomake/neomake'


    -- snippets
    use {'sirver/ultisnips', config = [[require('config.ultisnips')]] }
    -- use 'honza/vim-snippets'
    -- use { 'L3MON4D3/LuaSnip', config = [[require('config.luasnips')]]}

    -- Debugger
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
        },
        disable = true,
    }
    -- use 'puremourning/vimspector'

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
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make',
        config = [[require('telescope').load_extension('fzf')]],
        cond = not_windows,
    }
    use {
        'ahmedkhalf/project.nvim',
        after = 'telescope.nvim',
        config = function()
            require('telescope').load_extension('projects')
            require('project_nvim').setup {}
        end
    }
    -- use {
    --     'nvim-telescope/telescope-frecency.nvim',
    --     after = 'telescope.nvim',
    --     config = function()
    --         require'telescope'.load_extension('frecency')
    --     end,
    --     requires = {'tami5/sqlite.lua'},
    -- }
    use { 'ThePrimeagen/harpoon', config = [[require('config.harpoon')]] }
    use { 'windwp/nvim-spectre', config = [[require('config.spectre')]] }


    -- use {
    --     'ms-jpq/chadtree',
    --     branch = 'chad',
    --     run = 'python -m chadtree deps',
    --     config = [[require('config.chadtree')]],
    -- }
    use { 'kyazdani42/nvim-tree.lua', config = [[require('config.nvim_tree')]] }
    -- use { 'luukvbaal/nnn.nvim', config = [[require('config.nnn')]] }


    -- Git
    use {
        'TimUntersberger/neogit',
        config = [[require('config.neogit')]],
        requires = {
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
        'p00f/nvim-ts-rainbow',
        -- treesitter context don't yet work on windows
        -- {'romgrk/nvim-treesitter-context',
        --     cond = not_windows
        -- },
        -- 'nvim-treesitter/nvim-tree-docs'
    }
    use { 'ThePrimeagen/refactoring.nvim', config = [[require('config.refactor')]] }


    -- document generator
    use { 'kkoomen/vim-doge', run = ':call doge#install()', config = [[require('config.doge')]] }


    --- Quality of life
    use { 'mbbill/undotree', config = [[vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true })]] }
    use { 'folke/which-key.nvim', config = [[require'which-key'.setup{}]], cmd = 'WhichKey' }
    use { 'windwp/nvim-autopairs', config = [[require('nvim-autopairs').setup()]] }
    use { 'dstein64/vim-startuptime', cmd = 'StartupTime', config = [[vim.g.startuptime_tries = 10]] }
    -- use {
    --     'tpope/vim-obsession',
    --     config = function()
    --         vim.api.nvim_set_keymap('n', '<leader>ss', ':Obsession<cr>', {noremap=true})
    --         vim.api.nvim_set_keymap('n', '<leader>SS', ':source Session.vim<cr>', {noremap=true})
    --     end
    -- }
    -- use 'rmagatti/auto-session'
    -- use {
    --     'andweeb/presence.nvim',
    --     config = [[require('config.discord')]],
    --     cond = not_windows,
    -- }
    -- shows marks in sign column, not working with neovim
    -- use { 'kshenoy/vim-signature' }
    -- use { 'chentau/marks.nvim', config = [[require('config.marks')]] }

    -- ---  Note taking, tex, orgmode
    use { 'vhyrro/neorg', config = [[require('config.neorg')]] }
    use { 'nvim-neorg/neorg-telescope' }
    -- use { 'quantum-booty/neorg-trouble' }
    -- use 'godlygeek/tabular'
    -- use 'plasticboy/vim-markdown'
    -- use { 'iamcco/markdown-preview.nvim',  run = 'cd app && yarn install' }
    use { 'lervag/vimtex', config = [[vim.cmd('source $NVIM_CONFIG_PATH/config/vimtex.vim')]] }
    use 'KeitaNakamura/tex-conceal.vim'

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
