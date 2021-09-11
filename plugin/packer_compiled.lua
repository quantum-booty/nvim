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
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\barbar.nvim"
  },
  chadtree = {
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
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
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
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lsp_signature.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\18init_lsp_saga\flspsaga\frequire\0" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lspsaga.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\markdown-preview.nvim"
  },
  neogit = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neogit"
  },
  neorg = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neorg"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14neoscroll\frequire\0" },
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
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp"
  },
  ["nvim-dap"] = {
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
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspinstall"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n2\0\0\4\0\3\0\0066\0\0\0006\1\2\0'\3\1\0B\1\2\2=\1\1\0K\0\1\0\frequire\vnotify\bvim\0" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-notify"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter"
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
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\presence.nvim"
  },
  ["project.nvim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\project.nvim"
  },
  ["refactoring.nvim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\refactoring.nvim"
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
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim"
  },
  ["tex-conceal.vim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tex-conceal.vim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
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
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\which-key.nvim"
  },
  ["wilder.nvim"] = {
    loaded = true,
    path = "C:\\Users\\henry\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: vim-venter
time([[Config for vim-venter]], true)
try_loadstring("\27LJ\2\nn\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\22:VenterToggle<CR>\15<leader>go\6n\20nvim_set_keymap\bapi\bvim\0", "config", "vim-venter")
time([[Config for vim-venter]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n2\0\0\4\0\3\0\0066\0\0\0006\1\2\0'\3\1\0B\1\2\2=\1\1\0K\0\1\0\frequire\vnotify\bvim\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\18init_lsp_saga\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
