require("neo-tree").setup({
popup_border_style = "rounded",
default_component_configs = {
  indent = {
    indent_size = 2,
    padding = 1, -- extra padding on left hand side
    with_markers = true,
    indent_marker = "│",
    last_indent_marker = "└",
    highlight = "NeoTreeIndentMarker",
  },
},
filesystem = {
  follow_current_file = true, -- This will find and focus the file in the active buffer every
                               -- time the current file is changed while the tree is open.
  window = {
    position = "left",
    width = 40,
    mappings = {
      ["<2-LeftMouse>"] = "open",
      ["<cr>"] = "open",
      ["S"] = "open_split",
      ["s"] = "open_vsplit",
      ["C"] = "close_node",
      ["h"] = "navigate_up",
      ["\\"] = "set_root",
      ["."] = "toggle_hidden",
      ["I"] = "toggle_gitignore",
      ["<c-l>"] = "refresh",
      ["/"] = "fuzzy_finder",
      --["/"] = "filter_as_you_type", -- this was the default until v1.28
      --["/"] = "none" -- Assigning a key to "none" will remove the default mapping
      ["f"] = "filter_on_submit",
      ["<c-x>"] = "clear_filter",
      ["a"] = "add",
      ["d"] = "delete",
      ["r"] = "rename",
      ["c"] = "copy_to_clipboard",
      ["x"] = "cut_to_clipboard",
      ["p"] = "paste_from_clipboard",
      ["m"] = "move", -- takes text input for destination
      ["q"] = "close_window",
    }
  }
},
buffers = {
  show_unloaded = true,
  window = {
    position = "left",
    mappings = {
      ["<2-LeftMouse>"] = "open",
      ["<cr>"] = "open",
      ["S"] = "open_split",
      ["s"] = "open_vsplit",
      ["<bs>"] = "navigate_up",
      ["."] = "set_root",
      ["R"] = "refresh",
      ["a"] = "add",
      ["d"] = "delete",
      ["r"] = "rename",
      ["c"] = "copy_to_clipboard",
      ["x"] = "cut_to_clipboard",
      ["p"] = "paste_from_clipboard",
      ["bd"] = "buffer_delete",
    }
  },
},
git_status = {
  window = {
    position = "float",
    mappings = {
      ["<2-LeftMouse>"] = "open",
      ["<cr>"] = "open",
      ["S"] = "open_split",
      ["s"] = "open_vsplit",
      ["C"] = "close_node",
      ["R"] = "refresh",
      ["d"] = "delete",
      ["r"] = "rename",
      ["c"] = "copy_to_clipboard",
      ["x"] = "cut_to_clipboard",
      ["p"] = "paste_from_clipboard",
      ["A"]  = "git_add_all",
      ["gu"] = "git_unstage_file",
      ["ga"] = "git_add_file",
      ["gr"] = "git_revert_file",
      ["gc"] = "git_commit",
      ["gp"] = "git_push",
      ["gg"] = "git_commit_and_push",
    }
  }
}
})
vim.cmd([[nnoremap <leader>v :NeoTreeFocusToggle<cr>]])
