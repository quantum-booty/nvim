local refactor = require("refactoring")
refactor.setup({})

vim.api.nvim_set_keymap("v", "<Leader>re", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<Leader>rf", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]], {noremap = true, silent = true, expr = false})

-- load refactoring Telescope extension
-- remap to open the Telescope refactoring menu in visual mode
require("telescope").load_extension("refactoring")
vim.api.nvim_set_keymap(
	"v",
	"<leader>C",
	"<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",
	{ noremap = true }
)
