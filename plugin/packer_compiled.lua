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
local package_path_str = "C:\\Users\\henry\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\henry\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\henry\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\henry\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\henry\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
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
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\Catppuccino.nvim"
  },
  ["Nvim-R"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\Nvim-R"
  },
  ale = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\ale"
  },
  ["barbar.nvim"] = {
    config = { "require('config.barbar')" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\barbar.nvim"
  },
  chadtree = {
    config = { "require('config.chadtree')" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\chadtree"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp"
  },
  ["completion-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\completion-treesitter"
  },
  ["coq.artifacts"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\coq.artifacts"
  },
  coq_nvim = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\coq_nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\dashboard-nvim"
  },
  ["fzy-lua-native"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fzy-lua-native"
  },
  ["galaxyline.nvim"] = {
    config = { "require('config.galaxyline')" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "require('gitsigns').setup()" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indent-blankline.nvim"
  },
  ["jupyter-vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\jupyter-vim"
  },
  kommentary = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\kommentary"
  },
  ["lsp-trouble.nvim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lsp-trouble.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "require'lsp_signature'.setup()" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lsp_signature.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "require'lspsaga'.init_lsp_saga()" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lspsaga.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\markdown-preview.nvim"
  },
  neorg = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neorg"
  },
  ["neoscroll.nvim"] = {
    config = { "require'neoscroll'.setup{}" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neoscroll.nvim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nightfox.nvim"
  },
  ["nnn.vim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nnn.vim"
  },
  ["nvim-autopairs"] = {
    config = { "require('nvim-autopairs').setup()" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "require('config.cmp')" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp"
  },
  ["nvim-dap"] = {
    config = { "require('config.dap')" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap"
  },
  ["nvim-dap-python"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap-python"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap-virtual-text"
  },
  ["nvim-lspconfig"] = {
    config = { "require('config.lsp')" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "vim.notify = require('notify')" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-notify"
  },
  ["nvim-treesitter"] = {
    config = { "require('config.treesitter')" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-treesitter-context"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter-textobjects"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\popup.nvim"
  },
  ["presence.nvim"] = {
    config = { "require('config.discord')" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\presence.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\nx\0\0\3\0\6\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\0\5\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17project_nvim\rprojects\19load_extension\14telescope\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\project.nvim"
  },
  ["refactoring.nvim"] = {
    config = { "require('config.refactor')" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\refactoring.nvim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\sqlite.lua"
  },
  ["srcery-vim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\srcery-vim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\symbols-outline.nvim"
  },
  tabular = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tabular"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\targets.vim"
  },
  ["telescope-frecency.nvim"] = {
    config = { "\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\rfrecency\19load_extension\14telescope\frequire\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    config = { "require('telescope').load_extension('fzf')" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    after = { "telescope-frecency.nvim", "telescope-fzf-native.nvim", "project.nvim" },
    loaded = true,
    only_config = true
  },
  ["tex-conceal.vim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tex-conceal.vim"
  },
  ["todo-comments.nvim"] = {
    config = { 'require("todo-comments").setup{}' },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "require('config.toggleterm')" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyonight.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\ultisnips"
  },
  undotree = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\undotree"
  },
  ["vim-doge"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-doge"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-markdown"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-maximizer"
  },
  ["vim-obsession"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-obsession"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-repeat"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    config = { "vim.g.startuptime_tries = 10" },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-surround"
  },
  ["vim-uppercase-sql"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-uppercase-sql"
  },
  ["vim-venter"] = {
    config = { "\27LJ\2\nn\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\22:VenterToggle<CR>\15<leader>go\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-venter"
  },
  vimtex = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vimtex"
  },
  ["which-key.nvim"] = {
    config = { "require'which-key'.setup{}" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\which-key.nvim"
  },
  ["wilder.nvim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
require'lsp_signature'.setup()
time([[Config for lsp_signature.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
require'lspsaga'.init_lsp_saga()
time([[Config for lspsaga.nvim]], false)
-- Config for: vim-venter
time([[Config for vim-venter]], true)
try_loadstring("\27LJ\2\nn\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\22:VenterToggle<CR>\15<leader>go\6n\20nvim_set_keymap\bapi\bvim\0", "config", "vim-venter")
time([[Config for vim-venter]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
require'neoscroll'.setup{}
time([[Config for neoscroll.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
require("todo-comments").setup{}
time([[Config for todo-comments.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
require('config.toggleterm')
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
require('nvim-autopairs').setup()
time([[Config for nvim-autopairs]], false)
-- Config for: presence.nvim
time([[Config for presence.nvim]], true)
require('config.discord')
time([[Config for presence.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require('config.cmp')
time([[Config for nvim-cmp]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
require('gitsigns').setup()
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
require('config.dap')
time([[Config for nvim-dap]], false)
-- Config for: refactoring.nvim
time([[Config for refactoring.nvim]], true)
require('config.refactor')
time([[Config for refactoring.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
require'which-key'.setup{}
time([[Config for which-key.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
vim.notify = require('notify')
time([[Config for nvim-notify]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require('config.lsp')
time([[Config for nvim-lspconfig]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
require('config.galaxyline')
time([[Config for galaxyline.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require('config.telescope')
time([[Config for telescope.nvim]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
require('config.barbar')
time([[Config for barbar.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require('config.treesitter')
time([[Config for nvim-treesitter]], false)
-- Config for: chadtree
time([[Config for chadtree]], true)
require('config.chadtree')
time([[Config for chadtree]], false)
-- Conditional loads
time("Condition for { 'telescope-frecency.nvim', 'telescope-fzf-native.nvim', 'nvim-treesitter-context' }", true)
if
try_loadstring("\27LJ\2\nE\0\0\3\0\4\1\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\t\0\0\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\nwin32\bhas\afn\bvim\2\0", "condition", '{ "telescope-frecency.nvim", "telescope-fzf-native.nvim", "nvim-treesitter-context" }')
then
time("Condition for { 'telescope-frecency.nvim', 'telescope-fzf-native.nvim', 'nvim-treesitter-context' }", false)
time([[packadd for telescope-frecency.nvim]], true)
		vim.cmd [[packadd telescope-frecency.nvim]]
	time([[packadd for telescope-frecency.nvim]], false)
	-- Config for: telescope-frecency.nvim
	time([[Config for telescope-frecency.nvim]], true)
	try_loadstring("\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\rfrecency\19load_extension\14telescope\frequire\0", "config", "telescope-frecency.nvim")
	time([[Config for telescope-frecency.nvim]], false)
	time([[packadd for telescope-fzf-native.nvim]], true)
		vim.cmd [[packadd telescope-fzf-native.nvim]]
	time([[packadd for telescope-fzf-native.nvim]], false)
	-- Config for: telescope-fzf-native.nvim
	time([[Config for telescope-fzf-native.nvim]], true)
	require('telescope').load_extension('fzf')
	time([[Config for telescope-fzf-native.nvim]], false)
	time([[packadd for nvim-treesitter-context]], true)
		vim.cmd [[packadd nvim-treesitter-context]]
	time([[packadd for nvim-treesitter-context]], false)
else
time("Condition for { 'telescope-frecency.nvim', 'telescope-fzf-native.nvim', 'nvim-treesitter-context' }", false)
end
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd project.nvim ]]

-- Config for: project.nvim
try_loadstring("\27LJ\2\nx\0\0\3\0\6\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\0\5\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17project_nvim\rprojects\19load_extension\14telescope\frequire\0", "config", "project.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
