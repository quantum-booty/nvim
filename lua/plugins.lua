-- install packer if not found
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path, nil, nil)) > 0 then
    os.execute(string.format('git clone --depth 1 https://github.com/wbthomason/packer.nvim %s', install_path))
    vim.cmd 'packadd packer.nvim'
end

local not_windows = require('utils').not_windows

return require('packer').startup({ function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'lewis6991/impatient.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'MunifTanjim/nui.nvim'
    use { 'stevearc/dressing.nvim', config = [[require('config.dressing')]] }
    -- use { 'rcarriga/nvim-notify', config = [[vim.notify = require('notify')]] }
    use({
        "folke/noice.nvim",
        event = "VimEnter",
        config = function()
            require('config.noice_config')
        end,
        requires = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    })

    -- TODO: plugins to check out in the future
    -- remote editing
    -- http://neovimcraft.com/plugin/chipsenkbeil/distant.nvim/index.html

    -- colour schemes
    use {
        'navarasu/onedark.nvim',
        'rebelot/kanagawa.nvim',
        'rmehri01/onenord.nvim',
        -- 'srcery-colors/srcery-vim',
        -- {'ellisonleao/gruvbox.nvim', requires = {'rktjmp/lush.nvim'}},
        'folke/tokyonight.nvim',
        'tiagovla/tokyodark.nvim',
        { 'EdenEast/nightfox.nvim', run = ':NightfoxCompile',},
        { 'rose-pine/neovim', as = 'rose-pine' },
    }
    use {
        "catppuccin/nvim",
        as = "catppuccin",
        run = ":CatppuccinCompile"
    }

    -- cosmetics
    use { 'NvChad/nvim-colorizer.lua', config = [[require'colorizer'.setup()]] }
    use { 'lukas-reineke/indent-blankline.nvim', config = [[require('config.indent_blankline')]] }
    use { 'folke/todo-comments.nvim', config = [[require('config.todo_comments')]] }
    -- use { 'NTBBloodbath/galaxyline.nvim', config = [[require('config.galaxyline.spaceline')]] }
    use { 'goolord/alpha-nvim', setup = [[vim.g.indentLine_fileTypeExclude = {'alpha'}]],
        config = [[require('config.alpha')]] }
    use { 'akinsho/bufferline.nvim', tag = "*", config = [[require('config.bufferline')]] }
    use { 'ojroques/nvim-bufdel', config = [[require('config.nvim_bufdel')]] }
    use { 'b0o/incline.nvim', config = [[require('config.incline')]] }

    -- Consoles for interactive development
    -- use { 'jupyter-vim/jupyter-vim', opt=true, ft='python' }


    -- SQL
    -- use { 'jsborjesson/vim-uppercase-sql', ft='sql' }
    -- use 'tpope/vim-dadbod'
    -- use 'kristijanhusak/vim-dadbod-ui'
    -- use 'kristijanhusak/vim-dadbod-completion'
    --
    use { "petertriho/nvim-scrollbar", config = [[require('config.scrollbar')]] }
    use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
    use { 'tpope/vim-repeat' }
    use { 'kylechui/nvim-surround', config = [[require('config.surround')]] }
    use { 'wellle/targets.vim', event = 'CursorMoved' }
    use { 'ggandor/lightspeed.nvim', config = [[require('config.lightspeed')]] }

    -- --- lsp, autocompletion
    use { 'neovim/nvim-lspconfig', config = [[require('config.lsp')]] }
    use { 'ionide/Ionide-vim' }
    use { 'Hoffs/omnisharp-extended-lsp.nvim' }
    use { 'simrat39/rust-tools.nvim' }
    use {
        'saecki/crates.nvim',
        event = { "BufRead Cargo.toml" },
        requires = { { 'nvim-lua/plenary.nvim' } },
        config = function()
            require('crates').setup()
        end,
    }
    use { 'scalameta/nvim-metals' }
    use { 'onsails/lspkind-nvim' }
    use { 'folke/lsp-trouble.nvim', config = [[require('config.trouble')]] }
    use { 'ray-x/lsp_signature.nvim', after = 'nvim-lspconfig', config = [[require('config.lspsignature')]] }
    use { 'simrat39/symbols-outline.nvim', config = [[require('config.symbols_outline')]] }
    use "folke/lua-dev.nvim"
    use { 'https://git.sr.ht/~whynothugo/lsp_lines.nvim' }

    use {
        { 'hrsh7th/nvim-cmp', config = [[require('config.cmp_')]] },
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'saadparwaiz1/cmp_luasnip',
    }
    use { 'j-hui/fidget.nvim', config = [[require"fidget".setup{}]] }

    use { 'github/copilot.vim', config = [[require('config.copilot')]]  }
    -- linter, fixer, formatter
    use { 'sbdchd/neoformat', config = [[require('config.neoformat')]] }
    use { 'mfussenegger/nvim-lint', config = [[require('config.nvimlint')]] }


    -- snippets
    use { 'quantum-booty/friendly-snippets' }
    use { 'L3MON4D3/LuaSnip', config = [[require('config.luasnips')]] }

    -- Debugger
    -- use {
    --     'mfussenegger/nvim-dap',
    --     config = [[require('config.dap')]],
    --     ft = {'python'},
    --     keys = '<F5>',
    --     requires = {
    --         'mfussenegger/nvim-dap-python',
    --         'theHamsta/nvim-dap-virtual-text',
    --         'rcarriga/nvim-dap-ui',
    --         'nvim-telescope/telescope-dap.nvim',
    --     },
    --     disable = true,
    -- }

    -- use {
    --     'szw/vim-maximizer',
    --     config = function()
    --         vim.g.maximizer_set_default_mapping = 0
    --         vim.api.nvim_set_keymap('n', '<Del>', ':MaximizerToggle<CR>', { noremap=true, silent=true })
    --     end,
    -- }
    -- use { "beauwilliams/focus.nvim", config = [[require('config.focus')]] }
    use {
        'nyngwang/NeoZoom.lua',
        config = [[require('config.neozoom')]]
    }

    -- Fuzzy finder & project navigation
    use { 'nvim-telescope/telescope.nvim', config = [[require('config.telescope')]] }
    use { 'nvim-telescope/telescope-live-grep-args.nvim' }
    use {
        'natecraddock/telescope-zf-native.nvim',
        config = [[require('telescope').load_extension('zf-native')]],
    }
    -- use { "nvim-telescope/telescope-file-browser.nvim" }
    use {
        'ahmedkhalf/project.nvim',
        after = 'telescope.nvim',
        config = function()
            require('telescope').load_extension('projects')
            require('project_nvim').setup {}
        end
    }
    use { 'ThePrimeagen/harpoon', config = [[require('config.harpoon')]] }
    use { 'nvim-pack/nvim-spectre', config = [[require('config.spectre')]], run = not_windows() and "./build.sh" or "" }


    use { 'kyazdani42/nvim-tree.lua', config = [[require('config.nvim_tree')]] }

    use { 'sindrets/diffview.nvim', config = [[require('config.diffview_config')]] }
    use { 'lewis6991/gitsigns.nvim', config = [[require('config.gitsigns')]] }
    use { 'akinsho/toggleterm.nvim', config = [[require('config.toggleterm')]] }


    -- language support / syntax highlighting
    use {
        {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate',
            config = [[require('config.treesitter')]],
        },
        'nvim-treesitter/nvim-treesitter-textobjects',
        'nvim-treesitter/nvim-treesitter-refactor',
        'p00f/nvim-ts-rainbow',
        'nvim-treesitter/nvim-treesitter-context',
        -- 'David-Kunz/markid',
    }

    use { 'ThePrimeagen/refactoring.nvim', config = [[require('config.refactor')]] }
    use { 'Vimjas/vim-python-pep8-indent' }

    -- document generator
    use { 'danymat/neogen', config = [[require('config.neogen')]], cmd = 'Neogen' }

    --- Quality of life
    use { 'antoinemadec/FixCursorHold.nvim' }
    use { 'anuvyklack/hydra.nvim', config = [[require('config.hydra')]] }
    use { 'mbbill/undotree',
        config = [[vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true })]],
        cmd = 'UndotreeToggle' }
    use { 'windwp/nvim-autopairs', config = [[require('nvim-autopairs').setup()]] }
    use {
        'andweeb/presence.nvim',
        config = [[require('config.discord')]],
        cond = not_windows,
    }

    -- ---  Note taking, tex, orgmode
    use { 'nvim-neorg/neorg', config = [[require('config.neorg')]] }
    -- use { 'nvim-neorg/neorg-telescope' }
    -- use { 'quantum-booty/neorg-trouble' }
    -- use 'godlygeek/tabular'
    -- use 'plasticboy/vim-markdown'
    -- use { 'iamcco/markdown-preview.nvim',  run = 'cd app && yarn install' }
    -- use { 'lervag/vimtex', config = [[vim.cmd('source $NVIM_CONFIG_PATH/config/vimtex.vim')]] }
    -- use 'KeitaNakamura/tex-conceal.vim'
    -- https://github.com/tiagovla/zotex.nvim

end,
    config = {
        -- Move to lua dir so impatient.nvim can cache it
        compile_path = vim.fn.stdpath('config') .. '/lua/packer_compiled.lua',

        max_jobs = nil and not_windows() or 10,
        -- profile = {
        --     enable = true,
        --     threshold = 1, -- integer in milliseconds, plugins which load faster than this won't be shown in profile output
        -- },
        -- display = {
        --     open_fn = require('packer.util').float,
        -- }
    }
})
