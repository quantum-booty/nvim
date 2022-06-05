local map = require('utils').map
local opts = { noremap=true, silent=true }

local neorg_leader = "<F12>"

USERPROFILE = vim.env.USERPROFILE


require('neorg').setup {
    load = {
        -- ['core.norg.qol.todo_items'] = {},
        ['core.defaults'] = {},	-- Tells neorg to load the module called core.defaults with no extra data
        ['core.norg.concealer'] = {
            config = {
                icon_preset = 'diamond',
            }
        },
		["core.keybinds"] = {
			config = {
				default_keybinds = true,
				neorg_leader = neorg_leader,
			},
		},
        ['core.norg.completion'] = {
            config = {
                engine = 'nvim-cmp'
            }
        },
        ['core.norg.dirman'] = { -- Manage your directories with Neorg
            config = {
                workspaces = {
                    main = (vim.fn.has('win32') == 0) and '~/neorg/main' or USERPROFILE..'/neorg/main',
                    gtd = (vim.fn.has('win32') == 0) and '~/neorg/gtd' or USERPROFILE..'/neorg/gtd',
                }

            }
        },
        ["core.gtd.base"] = { -- REQUIRED FOR GTD
            config = { workspace = "gtd" }
        },
        ["core.ui"] = {}, -- REQUIRED FOR GTD
        -- ["core.norg.qol.toc"] = {},
        ["core.integrations.telescope"] = {},
        -- ["core.integrations.trouble"] = {},

    },
    -- hook = function()
    --     local neorg_callbacks = require('neorg.callbacks')
    --     neorg_callbacks.on_event("core.keybinds.events.enable_keybinds", function(_, keybinds)
    --         keybinds.map_event_to_mode("norg", {
    --             n = {
    --             },
    --         }, { silent = true, noremap = true })
    --         keybinds.map_event_to_mode("gtd-displays", {
    --             n = {
    --             },
    --         }, { silent = true, noremap = true })
    --     end)
    -- end
}
-- /home/henryw/.local/share/nvim/site/pack/packer/start/neorg/lua/neorg/modules/core/keybinds/default_keybinds.lua
map('n', neorg_leader..'wm', ':Neorg workspace main<CR>', opts)
map('n', neorg_leader..'wt', ':Neorg workspace gtd<CR>', opts)
map('n', neorg_leader..'mh', ':Trouble neorg<CR>', opts)
-- map('n', neorg_leader.."L", ":Telescope neorg insert_link<CR>", opts )
-- map('n', neorg_leader.."l", ":Telescope neorg find_linkable<CR>", opts )
