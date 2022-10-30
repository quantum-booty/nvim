local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'
local autocmd_multi = require('utils').autocmd_multi

dashboard.section.header.val = {
   "                                   ",
   "                                   ",
   "                                   ",
   "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
   "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
   "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
   "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
   "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
   "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
   "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
   " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
   " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
   "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
   "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ", "                                   ",
}


-- random coloured dragon fuck yeah!!!
math.randomseed(os.time())
local function random_colours(colours)
   return colours[math.random(1, #colours)]
end
local colours = {'cyan', 'red', 'yellow', 'orange', 'magenta', 'white', 'violet', 'lightyellow', 'seagreen', 'slateblue'}
vim.cmd(string.format('highlight dashboard guifg=%s guibg=bg', random_colours(colours)))
-- vim.cmd([[highlight dashboard guifg=red guibg=bg]])

dashboard.section.header.opts.hl = 'dashboard'

dashboard.section.buttons.val = {
    -- dashboard.button( "n", "  New file", ":ene <BAR> startinsert <CR>"),
    -- dashboard.button( "f", "  Find File", ":Telescope find_files<CR>"),
    -- dashboard.button( "r", "  Recents", ":Telescope frecency<CR>"),
    -- dashboard.button( "w", "  Find Word", ":Telescope live_grep<CR>"),
    dashboard.button( "n", "  Neorg", ":NeorgStart<CR>", {}),
    dashboard.button( "pp", "  Projects", ":Telescope projects<CR>", {}),
    dashboard.button( "rc", "  init.lua", ":cd $NVIM_CONFIG_PATH | e $NVIM_CONFIG_PATH/init.lua<CR>", {}),
    dashboard.button( "rp", "  plugins", ":cd $NVIM_CONFIG_PATH | e $NVIM_CONFIG_PATH/lua/plugins.lua<CR>", {}),
    dashboard.button( "ps", "  PackerSync", ":PackerSync<CR>", {}),
    -- dashboard.button( "b", "  Bookmarks", ":Telescope marks<CR>"),
    -- dashboard.button( "s", "  Load Last Session", ":SessionLoad<CR>"),
    dashboard.button( "q", "  Quit NVIM", ":qa<CR>", {}),
    }



-- disable bufferline
autocmd_multi(
    "Alpha",
    {
        {'FileType', {pattern='alpha', command='set showtabline=0'}},
        {'BufUnload', {pattern='<buffer>', command='set showtabline=2'}},
    }

)

alpha.setup(dashboard.opts)

