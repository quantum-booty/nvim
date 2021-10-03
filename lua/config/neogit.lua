local map = require('utils').map
local opts = { noremap=true, silent=true }

map('n', '<leader>gs', ' :Neogit<CR>', opts)
-- map('n', '<leader>gb', ':GBranches<CR>', opts)
-- map('n', '<leader>gf', ' :Git fetch --all<CR>', opts)
-- map('n', '<leader>grum', ' :Git rebase upstream/master<CR>', opts)
-- map('n', '<leader>grom', ' :Git rebase origin/master<CR>', opts)
-- map('n', '<leader>gt', ' :diffget //3<CR>', opts)
-- map('n', '<leader>ga', ' :diffget //2<CR>', opts)
-- map('n', '<leader>gc', ' :Git commit<CR>', opts)
-- map('n', '<leader>gp', ' :Git push<CR>', opts)



local neogit = require('neogit')
neogit.setup {
  disable_signs = false,
  disable_context_highlighting = false,
  disable_commit_confirmation = false,
  auto_refresh = true,
  disable_builtin_notifications = false,
  commit_popup = {
      kind = "split",
  },
  -- customize displayed signs
  signs = {
    -- { CLOSED, OPENED }
    section = { ">", "v" },
    item = { ">", "v" },
    hunk = { "", "" },
  },
  integrations = {
    diffview = true
  },
  -- override/add mappings
  mappings = {
    -- modify status buffer mappings
    status = {
      -- Adds a mapping with "B" as key that does the "BranchPopup" command
      ["B"] = "BranchPopup",
      ["p"] = "PushPopup",
      ["P"] = "PullPopup",
    }
  }
}
