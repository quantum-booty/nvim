vim.api.nvim_set_keymap("n", "<leader>Z", "<cmd>Trouble workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>z", "<cmd>Trouble document_diagnostics<cr>",
  {silent = true, noremap = true}
)
-- vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
--   {silent = true, noremap = true}
-- )
-- vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
--   {silent = true, noremap = true}
-- )
-- vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>",
--   {silent = true, noremap = true}
-- )
