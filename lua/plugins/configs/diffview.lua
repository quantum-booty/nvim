local map = require('utils').map
local opts = { noremap = true, silent = true }

vim.api.nvim_create_user_command("DiffviewToggle", function(e)
  local view = require("diffview.lib").get_current_view()

  if view then
    vim.cmd("DiffviewClose")
  else
    vim.cmd("DiffviewOpen " .. e.args)
  end
end, { nargs = "*" })


require("diffview").setup({
  enhanced_diff_hl = true,
  keymaps = {
    file_panel = {
      ["<down>"]        = false,
      ["<up>"]          = false,
      ["<leader>D"]     = ":DiffviewToggle<cr>",
    },
    file_history_panel = {
      ["<down>"]        = false,
      ["<up>"]          = false,
    },
  },
})


map('n', '<leader>D', ':DiffviewToggle<cr>', opts)
