-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/henryw/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/henryw/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/henryw/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/henryw/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/henryw/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Catppuccino.nvim"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/Catppuccino.nvim"
  },
  ["alpha-nvim"] = {
    config = { "require('config.alpha')" },
    loaded = true,
    needs_bufread = false,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/opt/alpha-nvim"
  },
  ["barbar.nvim"] = {
    config = { "require('config.barbar')" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["bufresize.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0005\3\3\0004\4\0\0=\4\4\0035\4\5\0=\4\6\3=\3\b\2B\0\2\1K\0\1\0\vresize\1\0\0\19trigger_events\1\2\0\0\15VimResized\tkeys\1\0\0\nsetup\14bufresize\frequire\0" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/bufresize.nvim"
  },
  chadtree = {
    config = { "require('config.chadtree')" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/chadtree"
  },
  ["completion-treesitter"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/completion-treesitter"
  },
  ["coq.artifacts"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/coq.artifacts"
  },
  coq_nvim = {
    config = { "require('config.coq')" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/coq_nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  ["fzy-lua-native"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/fzy-lua-native"
  },
  ["galaxyline.nvim"] = {
    config = { 'require("galaxyline.themes.eviline")' },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["github-nvim-theme"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/github-nvim-theme"
  },
  ["gitsigns.nvim"] = {
    config = { "require('gitsigns').setup()" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/gruvbox.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["jupyter-vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/opt/jupyter-vim"
  },
  kommentary = {
    config = { "require('config.kommentary')" },
    loaded = true,
    needs_bufread = false,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/opt/kommentary"
  },
  ["lightspeed.nvim"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/lightspeed.nvim"
  },
  ["lsp-trouble.nvim"] = {
    config = { "\27LJ\2\nu\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\30<cmd>LspTroubleToggle<cr>\14<leader>z\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/lsp-trouble.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "require('config.lspsignature')" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "require'lspsaga'.init_lsp_saga()" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/lush.nvim"
  },
  neogit = {
    config = { "require('config.neogit')" },
    keys = { { "", "<leader>gs" } },
    loaded = false,
    needs_bufread = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/opt/neogit"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/nightfox.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "require('config.nullls')" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "require('nvim-autopairs').setup()" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    config = { "require'colorizer'.setup()" },
    loaded = false,
    needs_bufread = false,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    config = { "require('config.dap')" },
    keys = { { "", "<F5>" } },
    loaded = false,
    needs_bufread = false,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/opt/nvim-dap"
  },
  ["nvim-dap-python"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/nvim-dap-python"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text"
  },
  ["nvim-lspconfig"] = {
    config = { "require('config.lsp')" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "vim.notify = require('notify')" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/nvim-notify"
  },
  ["nvim-treesitter"] = {
    config = { "require('config.treesitter')" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-context"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\nx\0\0\3\0\6\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\0\5\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17project_nvim\rprojects\19load_extension\14telescope\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/opt/project.nvim"
  },
  ["refactoring.nvim"] = {
    config = { "require('config.refactor')" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/refactoring.nvim"
  },
  ["sidebar.nvim"] = {
    config = { "require('config.sidebar')" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/sidebar.nvim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/sqlite.lua"
  },
  ["srcery-vim"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/srcery-vim"
  },
  ["symbols-outline.nvim"] = {
    config = { "require('config.symbols_outline')" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/targets.vim"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim"
  },
  ["telescope-frecency.nvim"] = {
    config = { "\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\rfrecency\19load_extension\14telescope\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/opt/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    config = { "require('telescope').load_extension('fzf')" },
    loaded = false,
    needs_bufread = false,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    after = { "project.nvim", "telescope-frecency.nvim" },
    loaded = true,
    only_config = true
  },
  ["todo-comments.nvim"] = {
    config = { 'require("todo-comments").setup{}' },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "require('config.toggleterm')" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  undotree = {
    config = { "vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true })" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-doge"] = {
    config = { "require('config.doge')" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/vim-doge"
  },
  ["vim-maximizer"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\t\0\r6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\3\0009\0\4\0'\2\5\0'\3\6\0'\4\a\0005\5\b\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\25:MaximizerToggle<CR>\n<Del>\6n\20nvim_set_keymap\bapi\"maximizer_set_default_mapping\6g\bvim\0" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/vim-maximizer"
  },
  ["vim-obsession"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\n\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\28:source Session.vim<cr>\15<leader>SS\1\0\1\fnoremap\2\19:Obsession<cr>\15<leader>ss\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/vim-obsession"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    config = { "vim.g.startuptime_tries = 10" },
    loaded = false,
    needs_bufread = false,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/opt/vim-startuptime"
  },
  ["vim-surround"] = {
    config = { "require('config.surround')" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-uppercase-sql"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/vim-uppercase-sql"
  },
  ["vim-venter"] = {
    config = { "\27LJ\2\nn\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\22:VenterToggle<CR>\15<leader>go\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/vim-venter"
  },
  ["which-key.nvim"] = {
    config = { "require'which-key'.setup{}" },
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  },
  ["wilder.nvim"] = {
    loaded = true,
    path = "/home/henryw/.local/share/nvim/site/pack/packer/start/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: alpha-nvim
time([[Setup for alpha-nvim]], true)
vim.g.indentLine_fileTypeExclude = {'alpha'}
time([[Setup for alpha-nvim]], false)
time([[packadd for alpha-nvim]], true)
vim.cmd [[packadd alpha-nvim]]
time([[packadd for alpha-nvim]], false)
-- Setup for: kommentary
time([[Setup for kommentary]], true)
vim.g.kommentary_create_default_mappings = false
time([[Setup for kommentary]], false)
time([[packadd for kommentary]], true)
vim.cmd [[packadd kommentary]]
time([[packadd for kommentary]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
require("galaxyline.themes.eviline")
time([[Config for galaxyline.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
require('config.nullls')
time([[Config for null-ls.nvim]], false)
-- Config for: sidebar.nvim
time([[Config for sidebar.nvim]], true)
require('config.sidebar')
time([[Config for sidebar.nvim]], false)
-- Config for: vim-obsession
time([[Config for vim-obsession]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\n\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\28:source Session.vim<cr>\15<leader>SS\1\0\1\fnoremap\2\19:Obsession<cr>\15<leader>ss\6n\20nvim_set_keymap\bapi\bvim\0", "config", "vim-obsession")
time([[Config for vim-obsession]], false)
-- Config for: kommentary
time([[Config for kommentary]], true)
require('config.kommentary')
time([[Config for kommentary]], false)
-- Config for: vim-maximizer
time([[Config for vim-maximizer]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\t\0\r6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\3\0009\0\4\0'\2\5\0'\3\6\0'\4\a\0005\5\b\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\25:MaximizerToggle<CR>\n<Del>\6n\20nvim_set_keymap\bapi\"maximizer_set_default_mapping\6g\bvim\0", "config", "vim-maximizer")
time([[Config for vim-maximizer]], false)
-- Config for: refactoring.nvim
time([[Config for refactoring.nvim]], true)
require('config.refactor')
time([[Config for refactoring.nvim]], false)
-- Config for: vim-doge
time([[Config for vim-doge]], true)
require('config.doge')
time([[Config for vim-doge]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
require'lspsaga'.init_lsp_saga()
time([[Config for lspsaga.nvim]], false)
-- Config for: undotree
time([[Config for undotree]], true)
vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true })
time([[Config for undotree]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
require('config.lspsignature')
time([[Config for lsp_signature.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require('config.lsp')
time([[Config for nvim-lspconfig]], false)
-- Config for: lsp-trouble.nvim
time([[Config for lsp-trouble.nvim]], true)
try_loadstring("\27LJ\2\nu\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\30<cmd>LspTroubleToggle<cr>\14<leader>z\6n\20nvim_set_keymap\bapi\bvim\0", "config", "lsp-trouble.nvim")
time([[Config for lsp-trouble.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require('config.treesitter')
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
require('nvim-autopairs').setup()
time([[Config for nvim-autopairs]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
require('config.toggleterm')
time([[Config for toggleterm.nvim]], false)
-- Config for: bufresize.nvim
time([[Config for bufresize.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0005\3\3\0004\4\0\0=\4\4\0035\4\5\0=\4\6\3=\3\b\2B\0\2\1K\0\1\0\vresize\1\0\0\19trigger_events\1\2\0\0\15VimResized\tkeys\1\0\0\nsetup\14bufresize\frequire\0", "config", "bufresize.nvim")
time([[Config for bufresize.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
require("todo-comments").setup{}
time([[Config for todo-comments.nvim]], false)
-- Config for: coq_nvim
time([[Config for coq_nvim]], true)
require('config.coq')
time([[Config for coq_nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
vim.notify = require('notify')
time([[Config for nvim-notify]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
require('config.alpha')
time([[Config for alpha-nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require('config.telescope')
time([[Config for telescope.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
require'which-key'.setup{}
time([[Config for which-key.nvim]], false)
-- Config for: vim-venter
time([[Config for vim-venter]], true)
try_loadstring("\27LJ\2\nn\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\22:VenterToggle<CR>\15<leader>go\6n\20nvim_set_keymap\bapi\bvim\0", "config", "vim-venter")
time([[Config for vim-venter]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
require('config.barbar')
time([[Config for barbar.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
require('gitsigns').setup()
time([[Config for gitsigns.nvim]], false)
-- Config for: chadtree
time([[Config for chadtree]], true)
require('config.chadtree')
time([[Config for chadtree]], false)
-- Config for: vim-surround
time([[Config for vim-surround]], true)
require('config.surround')
time([[Config for vim-surround]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
require('config.symbols_outline')
time([[Config for symbols-outline.nvim]], false)
-- Conditional loads
time("Condition for { 'nvim-treesitter-context', 'telescope-fzf-native.nvim' }", true)
if
try_loadstring("\27LJ\2\nE\0\0\3\0\4\1\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\t\0\0\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\nwin32\bhas\afn\bvim\2\0", "condition", '{ "nvim-treesitter-context", "telescope-fzf-native.nvim" }')
then
time("Condition for { 'nvim-treesitter-context', 'telescope-fzf-native.nvim' }", false)
time([[packadd for nvim-treesitter-context]], true)
		require("packer.load")({"nvim-treesitter-context"}, {}, _G.packer_plugins)
	time([[packadd for nvim-treesitter-context]], false)
	time([[packadd for telescope-fzf-native.nvim]], true)
		require("packer.load")({"telescope-fzf-native.nvim"}, {}, _G.packer_plugins)
	time([[packadd for telescope-fzf-native.nvim]], false)
	-- Config for: telescope-fzf-native.nvim
	time([[Config for telescope-fzf-native.nvim]], true)
	require('telescope').load_extension('fzf')
	time([[Config for telescope-fzf-native.nvim]], false)
else
time("Condition for { 'nvim-treesitter-context', 'telescope-fzf-native.nvim' }", false)
end
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd telescope-frecency.nvim ]]

-- Config for: telescope-frecency.nvim
try_loadstring("\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\rfrecency\19load_extension\14telescope\frequire\0", "config", "telescope-frecency.nvim")

vim.cmd [[ packadd project.nvim ]]

-- Config for: project.nvim
try_loadstring("\27LJ\2\nx\0\0\3\0\6\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\0\5\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17project_nvim\rprojects\19load_extension\14telescope\frequire\0", "config", "project.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <F5> <cmd>lua require("packer.load")({'nvim-dap'}, { keys = "<lt>F5>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>gs <cmd>lua require("packer.load")({'neogit'}, { keys = "<lt>leader>gs", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType python ++once lua require("packer.load")({'nvim-dap'}, { ft = "python" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
