local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'

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
   "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
   "                                   ",
}
-- # TODO: get this shit working
-- random coloured dragon fuck yeah!!!
-- function random_colours(colours)
--    return colours[math.random(1, #colours)]
-- end
-- colours = {'cyan', 'red', 'yellow', 'orange', 'magenta', 'white', 'violet', 'lightyellow', 'seagreen', 'slateblue'}
-- vim.cmd(string.format('highlight dashboard guifg=%s guibg=bg', random_colours(colours)))
--
vim.cmd('highlight dashboard guifg=red guibg=bg')

dashboard.section.header.opts.hl = 'dashboard'

dashboard.section.buttons.val = {
    dashboard.button( "n", "  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "  Find File", ":Telescope find_files<CR>"),
    dashboard.button( "r", "  Recents", ":Telescope frecency<CR>"),
    dashboard.button( "w", "  Find Word", ":Telescope live_grep<CR>"),
    dashboard.button( "b", "  Bookmarks", ":Telescope marks<CR>"),
    -- dashboard.button( "s", "  Load Last Session", ":SessionLoad<CR>"),
    dashboard.button( "q", "  Quit NVIM", ":qa<CR>"),
    }

local handle = io.popen('fortune')
local fortune = handle:read("*a")
handle:close()
dashboard.section.footer.val = fortune
alpha.setup(dashboard.opts)

