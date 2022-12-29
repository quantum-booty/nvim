return {
    {
        'navarasu/onedark.nvim',
        lazy = true,
        priority = 1000,
        config = function() require('plugins.colours.onedark') end
    },
    {
        'rebelot/kanagawa.nvim',
        lazy = true,
        priority = 1000,
        config = function()
            require('plugins.colours.kanagawa')
            -- vim.o.background = "light"; vim.cmd.colorscheme('kanagawa')
            vim.o.background = "dark"; vim.cmd.colorscheme('kanagawa')
            -- vim.o.background = ""; require('kanagawa').setup({theme = "dragon"}); vim.cmd.colorscheme('kanagawa')
        end
    },
    {
        'rmehri01/onenord.nvim',
        lazy = true,
        priority = 1000,
        config = function() require('plugins.colours.onenord') end
    },
    {
        'rose-pine/neovim',
        lazy = true,
        priority = 1000,
        name = 'rose-pine',
        config = function()
            require('rose-pine').setup({ dark_variant = 'moon', disable_italics = true })
            vim.cmd.colorscheme('rose-pine')
        end
    },
    {
        'EdenEast/nightfox.nvim',
        lazy = true,
        priority = 1000,
        config = function()
            require('plugins.colours.nightfox')
            -- vim.cmd.colorscheme('nightfox')
            -- vim.cmd.colorscheme('terafox')
            -- vim.cmd.colorscheme('nordfox')
            -- vim.cmd.colorscheme('duskfox')
            -- vim.cmd.colorscheme('dayfox')
            -- vim.cmd.colorscheme('dawnfox')
            vim.cmd.colorscheme('carbonfox')
        end,
        build = ':NightfoxCompile',
    },
    {
        "catppuccin/nvim",
        lazy = true,
        priority = 1000,
        name = "catppuccin",
        build = ":CatppuccinCompile",
        config = function()
            require('plugins.colours.catppuccin')
            vim.cmd.colorscheme('catppuccin-macchiato') -- default
            -- vim.cmd.colorscheme('catppuccin-latte') -- light
            -- vim.cmd.colorscheme('catppuccin-frappe') -- nord
            -- vim.cmd.colorscheme('catppuccin-mocha') -- deep
        end,
    },
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            -- vim.cmd.colorscheme('tokyonight')
            -- vim.cmd.colorscheme('tokyonight-storm')
            -- vim.cmd.colorscheme('tokyonight-moon')
            vim.cmd.colorscheme('tokyonight-night')
            -- vim.cmd.colorscheme('tokyonight-day')
        end
    },
    {
        'tiagovla/tokyodark.nvim',
        lazy = true,
        priority = 1000,
        config = function() vim.cmd.colorscheme('tokyodark') end
    },
    {
        'nyoom-engineering/oxocarbon.nvim',
        lazy = true,
        priority = 1000,
        config = function() vim.cmd.colorscheme "oxocarbon" end
    },
}
