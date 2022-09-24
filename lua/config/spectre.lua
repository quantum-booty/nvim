local map = require('utils').map
local opts = { noremap=true, silent=true }

map('n', '<leader>SS', ':lua require("spectre").open()<CR>', opts)

-- -- "search current word
map('n', '<leader>SR', ':lua require("spectre").open_visual({select_word=true})<CR>', opts)
map('v', '<leader>SR', ':lua require("spectre").open_visual()<CR>', opts)
-- vnoremap <leader>s :lua require('spectre').open_visual()<CR>
-- "  search in current file
-- nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
--

require('spectre').setup({
    default = {
        replace = {
            cmd = "oxi"
       }
    }
}
  )
