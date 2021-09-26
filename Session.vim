let SessionLoad = 1
let s:cpo_save=&cpo
set cpo&vim
cnoremap <expr> <Down> wilder#can_accept_completion()  ?  wilder#accept_completion()  :  '<Down>'
cnoremap <expr> <Up> wilder#can_reject_completion()  ?  wilder#reject_completion()  :  '<Up>'
cnoremap <expr> <S-Tab> wilder#in_context()  ?  wilder#previous()  :  '<S-Tab>'
inoremap <silent> <expr> <C-Space> pumvisible() ? '' : ''
inoremap <silent> <expr> <BS> pumvisible() ? '<BS>' : '<BS>'
inoremap <silent> <expr> <S-Tab> pumvisible() ? '' : '<BS>'
inoremap <expr> <Plug>(doge-comment-jump-backward) doge#comment#jump("backward")
inoremap <expr> <Plug>(doge-comment-jump-forward) doge#comment#jump("forward")
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
inoremap <silent> <Plug>(ale_complete) :ALEComplete
nnoremap <silent>  
xnoremap <silent>  <Cmd>lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)
nnoremap <silent>  <Cmd>lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)
xnoremap <silent>  <Cmd>lua require('neoscroll').scroll(vim.wo.scroll, true, 250)
nnoremap <silent>  <Cmd>lua require('neoscroll').scroll(vim.wo.scroll, true, 250)
xnoremap <silent>  <Cmd>lua require('neoscroll').scroll(0.10, false, 100)
nnoremap <silent>  <Cmd>lua require('neoscroll').scroll(0.10, false, 100)
xnoremap <silent>  <Cmd>lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)
nnoremap <silent>  <Cmd>lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)
nnoremap <silent>  <Cmd>lua COQ.Nav_mark()
vnoremap <silent>  <Cmd>lua COQ.Nav_mark()
xnoremap <silent> 	 :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> 	 :call UltiSnips#ExpandSnippet()
nnoremap <silent> <NL> :BufferPrevious
nnoremap <silent>  :BufferNext
nnoremap  <Cmd>nohlsearch|diffupdate
nnoremap <silent>  <Cmd>lua require('telescope.builtin').git_files()
snoremap  "_c
nnoremap <silent>  :BufferPick
nnoremap <silent>  <Cmd>execute v:count . "ToggleTerm"
xnoremap <silent>  <Cmd>lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)
nnoremap <silent>  <Cmd>lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)
nnoremap <silent> Þ <Nop>
nnoremap <silent>  <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
xnoremap <silent>  <Cmd>lua require('neoscroll').scroll(-0.10, false, 100)
nnoremap <silent>  <Cmd>lua require('neoscroll').scroll(-0.10, false, 100)
tnoremap <silent>  ''
nnoremap <silent>  pÞ <Nop>
nnoremap <silent>  cÞ <Nop>
nnoremap <silent>  gruÞ <Nop>
nnoremap <silent>  groÞ <Nop>
nnoremap <silent>  grÞ <Nop>
nnoremap <silent>  gÞ <Nop>
nnoremap <silent>  SÞ <Nop>
nnoremap <silent>  sÞ <Nop>
nnoremap <silent>  rÞ <Nop>
nnoremap <silent>  Þ <Nop>
xnoremap <silent>  sÞ <Nop>
xnoremap <silent>  cÞ <Nop>
xnoremap <silent>  rÞ <Nop>
xnoremap <silent>  Þ <Nop>
xnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "v", auto = true})
nmap <silent>  d <Plug>(doge-generate)
nnoremap <silent>  T <Cmd>SymbolsOutline
nnoremap <silent>  b <Cmd>SidebarNvimToggle
nnoremap  go :VenterToggle
vnoremap <silent>  ca :lua require('lspsaga.codeaction').range_code_action()
nnoremap <silent>  ca <Cmd>lua require('lspsaga.codeaction').code_action()
nnoremap <silent>  f <Cmd>lua require'lspsaga.provider'.preview_definition()
nnoremap <silent>  pgs <Cmd>lua require('telescope.builtin').git_status()
nnoremap <silent>  pgb <Cmd>lua require('telescope.builtin').git_branches()
nnoremap <silent>  pgbc <Cmd>lua require('telescope.builtin').git_bcommits()
nnoremap <silent>  pgc <Cmd>lua require('telescope.builtin').git_commits()
nnoremap <silent>  pD <Cmd>lua require('telescope.builtin').lsp_document_symbols()
nnoremap <silent>  pa <Cmd>lua require('telescope.builtin').lsp_code_actions()
nnoremap <silent>  pd <Cmd>lua require('telescope.builtin').treesitter()
nnoremap <silent>  pW <Cmd>lua require('telescope.builtin').lsp_workspace_symbols()
nnoremap <silent>  pr <Cmd>lua require('telescope.builtin').lsp_references({initial_mode='normal'})
nnoremap <silent>  pk <Cmd>lua require('telescope.builtin').keymaps()
nnoremap <silent>  pc <Cmd>lua require('telescope.builtin').colorscheme()
nnoremap <silent>  ph <Cmd>Telescope help_tags
nnoremap <silent>  pH :tab help =expand("<cword>")
nnoremap <silent>  pb <Cmd>lua require('telescope.builtin').buffers()
nnoremap <silent>  ps <Cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })
nnoremap <silent>  pl <Cmd>lua require('telescope.builtin').grep_string()
nnoremap <silent>  pw <Cmd>lua require('telescope.builtin').grep_string({search = vim.fn.expand("<cword>")})
nnoremap <silent>  pg <Cmd>lua require('telescope.builtin').live_grep()
nnoremap <silent>  pf <Cmd>lua require('telescope.builtin').find_files()
nnoremap <silent>  pp :Telescope projects
nnoremap <silent>    <Cmd>lua require('telescope').extensions.frecency.frecency()
nnoremap  u :UndotreeToggle
nnoremap <silent>  gp  :Git push
nnoremap <silent>  gc  :Git commit
nnoremap <silent>  gs  :G
nnoremap <silent>  ga  :diffget //2
nnoremap <silent>  gt  :diffget //3
nnoremap <silent>  grom  :Git rebase origin/master
nnoremap <silent>  grum  :Git rebase upstream/master
nnoremap <silent>  gf  :Git fetch --all
nnoremap <silent>  gb :GBranches
vnoremap <silent>  rt  <Cmd>lua M.refactors()
vnoremap <silent>  rf  <Cmd>lua require('refactoring').refactor('Extract Function To File')
vnoremap <silent>  re  <Cmd>lua require('refactoring').refactor('Extract Function')
nnoremap  SS :source Session.vim
nnoremap  ss :Obsession
nnoremap  z <Cmd>LspTroubleToggle
nnoremap  v <Cmd>CHADopen
nnoremap <silent>  X :BufferCloseAllButCurrent
nnoremap <silent>  x :BufferClose
nnoremap <silent>  i I
nnoremap <silent>  a A
nnoremap <silent>  k :m .-2==
nnoremap <silent>  j :m .+1==
nnoremap <silent>  rp :e $NVIM_CONFIG_PATH/lua/plugins.lua
nnoremap <silent>  rc :e $NVIM_CONFIG_PATH/init.lua
nnoremap <silent>  so :source $MYVIMRC
vnoremap  sr :s/\<\>//g<Left><Left><Left><Left><Left>
nnoremap  sr :%s/\<\>//g<Left><Left>
nnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "n", auto = true})
nnoremap <silent> !aÞ <Nop>
nnoremap <silent> !iÞ <Nop>
nnoremap <silent> !Þ <Nop>
nnoremap <silent> ! <Cmd>lua require("which-key").show("!", {mode = "n", auto = true})
nnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "n", auto = true})
nnoremap <silent> # #zz
nnoremap <silent> ' <Cmd>lua require("which-key").show("'", {mode = "n", auto = true})
nmap <silent> ( 
nmap <silent> ) 
nnoremap <silent> * *zz
nnoremap <silent> + 
nnoremap <silent> - 
nnoremap <silent> <aÞ <Nop>
nnoremap <silent> <iÞ <Nop>
nnoremap <silent> <Þ <Nop>
nnoremap <silent> < <Cmd>lua require("which-key").show("<", {mode = "n", auto = true})
nnoremap <silent> >aÞ <Nop>
nnoremap <silent> >iÞ <Nop>
nnoremap <silent> >Þ <Nop>
nnoremap <silent> > <Cmd>lua require("which-key").show(">", {mode = "n", auto = true})
nnoremap <silent> @ <Cmd>lua require("which-key").show("@", {mode = "n", auto = true})
xnoremap <silent> @(targetsÞ <Nop>
xnoremap <silent> @(targetÞ <Nop>
xnoremap <silent> @(targeÞ <Nop>
xnoremap <silent> @(targÞ <Nop>
xnoremap <silent> @(tarÞ <Nop>
xnoremap <silent> @(taÞ <Nop>
xnoremap <silent> @(tÞ <Nop>
xnoremap <silent> @(Þ <Nop>
xnoremap <silent> @ <Cmd>lua require("which-key").show("@", {mode = "v", auto = true})
xnoremap <silent> @(targets) :call targets#do()
onoremap <silent> @(targets) :call targets#do()
xmap <expr> A targets#e('o', 'A', 'A')
omap <expr> A targets#e('o', 'A', 'A')
xmap <expr> I targets#e('o', 'I', 'I')
omap <expr> I targets#e('o', 'I', 'I')
vnoremap <silent> J :m '>+1gv=gv
nnoremap <silent> J mzJ`z
nnoremap <silent> K <Cmd>lua require('lspsaga.hover').render_hover_doc()
vnoremap <silent> K :m '<-2gv=gv
nnoremap <silent> N Nzzzv
xmap S <Plug>VSurround
nnoremap <silent> U 
nnoremap <silent> X "_d
nnoremap <silent> Y v$y
nnoremap <silent> [Þ <Nop>
nnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "n", auto = true})
nnoremap <silent> ]Þ <Nop>
nnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "n", auto = true})
nnoremap <silent> ` <Cmd>lua require("which-key").show("`", {mode = "n", auto = true})
xmap <expr> a targets#e('o', 'a', 'a')
omap <expr> a targets#e('o', 'a', 'a')
nnoremap <silent> ciÞ <Nop>
nnoremap <silent> caÞ <Nop>
nnoremap <silent> cÞ <Nop>
nnoremap <silent> c <Cmd>lua require("which-key").show("c", {mode = "n", auto = true})
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nnoremap <silent> diÞ <Nop>
nnoremap <silent> daÞ <Nop>
nnoremap <silent> dÞ <Nop>
nnoremap <silent> d <Cmd>lua require("which-key").show("d", {mode = "n", auto = true})
nmap ds <Plug>Dsurround
nnoremap <silent> g~aÞ <Nop>
nnoremap <silent> g~iÞ <Nop>
nnoremap <silent> g~Þ <Nop>
nnoremap <silent> guaÞ <Nop>
nnoremap <silent> guiÞ <Nop>
nnoremap <silent> guÞ <Nop>
nnoremap <silent> gUaÞ <Nop>
nnoremap <silent> gUiÞ <Nop>
nnoremap <silent> gUÞ <Nop>
nnoremap <silent> gÞ <Nop>
nnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "n", auto = true})
xnoremap <silent> gÞ <Nop>
xnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "v", auto = true})
xmap gS <Plug>VgSurround
nnoremap <silent> gn :ALENext
nnoremap <silent> gp :ALEPrevious
vmap gc <Plug>kommentary_visual_default
nmap gc <Plug>kommentary_motion_default
nmap gcc <Plug>kommentary_line_default
nnoremap <silent> gk g,
nnoremap <silent> gj g;
nnoremap <silent> g* g*zz
xmap <expr> i targets#e('o', 'i', 'i')
omap <expr> i targets#e('o', 'i', 'i')
nnoremap <silent> <expr> j (v:count ? (v:count > 5 ? "m'" . v:count : "") . "j" : "gj")
nnoremap <silent> <expr> k (v:count ? (v:count > 5 ? "m'" . v:count : "") . "k" : "gk")
nnoremap <silent> n nzzzv
onoremap <silent> s :HopChar2
nnoremap <silent> s :HopChar2
nnoremap <silent> vaÞ <Nop>
nnoremap <silent> viÞ <Nop>
nnoremap <silent> vÞ <Nop>
nnoremap <silent> v <Cmd>lua require("which-key").show("v", {mode = "n", auto = true})
nnoremap <silent> yiÞ <Nop>
nnoremap <silent> yaÞ <Nop>
nnoremap <silent> yÞ <Nop>
nnoremap <silent> y <Cmd>lua require("which-key").show("y", {mode = "n", auto = true})
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> zfaÞ <Nop>
nnoremap <silent> zfiÞ <Nop>
nnoremap <silent> zfÞ <Nop>
nnoremap <silent> zÞ <Nop>
nnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "n", auto = true})
xnoremap <silent> zÞ <Nop>
xnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "v", auto = true})
xnoremap <silent> zz <Cmd>lua require('neoscroll').zz(250)
nnoremap <silent> zz <Cmd>lua require('neoscroll').zz(250)
xnoremap <silent> zb <Cmd>lua require('neoscroll').zb(250)
nnoremap <silent> zb <Cmd>lua require('neoscroll').zb(250)
xnoremap <silent> zt <Cmd>lua require('neoscroll').zt(250)
nnoremap <silent> zt <Cmd>lua require('neoscroll').zt(250)
nnoremap <silent> <C-Space> i
vnoremap <silent> <C-Space> i
nnoremap <silent> <Plug>SurroundRepeat .
snoremap <expr> <Plug>(doge-comment-jump-backward) doge#comment#jump("backward")
snoremap <expr> <Plug>(doge-comment-jump-forward) doge#comment#jump("forward")
nnoremap <expr> <Plug>(doge-comment-jump-backward) doge#comment#jump("backward")
nnoremap <expr> <Plug>(doge-comment-jump-forward) doge#comment#jump("forward")
nnoremap <Plug>(doge-generate) :call doge#generate(v:count)
snoremap <silent> <Del> "_c
snoremap <silent> <BS> "_c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))
nnoremap <silent> <M-d> <Cmd>lua _lazygit_toggle()
nnoremap <silent> <Del> :MaximizerToggle
nnoremap <silent> <M-k>  :BufferMoveNext
nnoremap <silent> <M-j> :BufferMovePrevious
xnoremap <silent> <Plug>kommentary_visual_decrease <Cmd>call v:lua.kommentary.go(2, 'kommentary.decrease_comment_level')
nnoremap <silent> <Plug>kommentary_line_decrease <Cmd>call v:lua.kommentary.go(1, 'kommentary.decrease_comment_level')
nnoremap <silent> <expr> <Plug>kommentary_motion_decrease v:lua.kommentary.go(4, 'kommentary.decrease_comment_level')
xnoremap <silent> <Plug>kommentary_visual_increase <Cmd>call v:lua.kommentary.go(2, 'kommentary.increase_comment_level')
nnoremap <silent> <Plug>kommentary_line_increase <Cmd>call v:lua.kommentary.go(1, 'kommentary.increase_comment_level')
nnoremap <silent> <expr> <Plug>kommentary_motion_increase v:lua.kommentary.go(4, 'kommentary.increase_comment_level')
xnoremap <silent> <Plug>kommentary_visual_default <Cmd>call v:lua.kommentary.go(2)
nnoremap <silent> <Plug>kommentary_line_default <Cmd>call v:lua.kommentary.go(1)
nnoremap <silent> <expr> <Plug>kommentary_motion_default v:lua.kommentary.go(4)
nnoremap <silent> <Plug>(ale_repeat_selection) :ALERepeatSelection
nnoremap <silent> <Plug>(ale_code_action) :ALECodeAction
nnoremap <silent> <Plug>(ale_rename) :ALERename
nnoremap <silent> <Plug>(ale_import) :ALEImport
nnoremap <silent> <Plug>(ale_documentation) :ALEDocumentation
nnoremap <silent> <Plug>(ale_hover) :ALEHover
nnoremap <silent> <Plug>(ale_find_references) :ALEFindReferences
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_vsplit) :ALEGoToTypeDefinitionIn -vsplit
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_split) :ALEGoToTypeDefinition -split
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_tab) :ALEGoToTypeDefinition -tab
nnoremap <silent> <Plug>(ale_go_to_type_definition) :ALEGoToTypeDefinition
nnoremap <silent> <Plug>(ale_go_to_definition_in_vsplit) :ALEGoToDefinition -vsplit
nnoremap <silent> <Plug>(ale_go_to_definition_in_split) :ALEGoToDefinition -split
nnoremap <silent> <Plug>(ale_go_to_definition_in_tab) :ALEGoToDefinition -tab
nnoremap <silent> <Plug>(ale_go_to_definition) :ALEGoToDefinition
nnoremap <silent> <Plug>(ale_fix) :ALEFix
nnoremap <silent> <Plug>(ale_detail) :ALEDetail
nnoremap <silent> <Plug>(ale_lint) :ALELint
nnoremap <silent> <Plug>(ale_reset_buffer) :ALEResetBuffer
nnoremap <silent> <Plug>(ale_disable_buffer) :ALEDisableBuffer
nnoremap <silent> <Plug>(ale_enable_buffer) :ALEEnableBuffer
nnoremap <silent> <Plug>(ale_toggle_buffer) :ALEToggleBuffer
nnoremap <silent> <Plug>(ale_reset) :ALEReset
nnoremap <silent> <Plug>(ale_disable) :ALEDisable
nnoremap <silent> <Plug>(ale_enable) :ALEEnable
nnoremap <silent> <Plug>(ale_toggle) :ALEToggle
nnoremap <silent> <Plug>(ale_last) :ALELast
nnoremap <silent> <Plug>(ale_first) :ALEFirst
nnoremap <silent> <Plug>(ale_next_wrap_warning) :ALENext -wrap -warning
nnoremap <silent> <Plug>(ale_next_warning) :ALENext -warning
nnoremap <silent> <Plug>(ale_next_wrap_error) :ALENext -wrap -error
nnoremap <silent> <Plug>(ale_next_error) :ALENext -error
nnoremap <silent> <Plug>(ale_next_wrap) :ALENextWrap
nnoremap <silent> <Plug>(ale_next) :ALENext
nnoremap <silent> <Plug>(ale_previous_wrap_warning) :ALEPrevious -wrap -warning
nnoremap <silent> <Plug>(ale_previous_warning) :ALEPrevious -warning
nnoremap <silent> <Plug>(ale_previous_wrap_error) :ALEPrevious -wrap -error
nnoremap <silent> <Plug>(ale_previous_error) :ALEPrevious -error
nnoremap <silent> <Plug>(ale_previous_wrap) :ALEPreviousWrap
nnoremap <silent> <Plug>(ale_previous) :ALEPrevious
nnoremap <silent> <Right> :call WinMove('l')
nnoremap <silent> <Up> :call WinMove('k')
nnoremap <silent> <Down> :call WinMove('j')
nnoremap <silent> <Left> :call WinMove('h')
inoremap <silent> <expr>  pumvisible() ? '' : ''
inoremap <silent> Þ <Nop>
inoremap <silent>  <Cmd>lua require("which-key").show("\7", {mode = "i", auto = true})
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent>  <Cmd>lua COQ.Nav_mark()
cnoremap <expr> 	 wilder#in_context()  ?  wilder#next()  :  '	'
inoremap <silent> <expr> 	 pumvisible() ? '' : '	'
inoremap <silent> <expr>  (pumvisible() && complete_info(['mode']).mode ==# 'eval') ? Preview_preview() : ''
inoremap <silent> <expr>  pumvisible() ? (complete_info(['selected']).selected == -1 ? '' : '') : ''
cnoremap <silent> Þ <Nop>
cnoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
inoremap <silent> Þ <Nop>
inoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
imap  <Plug>Isurround
inoremap <silent>  <Cmd>ToggleTerm
inoremap <silent> <expr>  pumvisible() ? '' : ''
inoremap <silent> <expr>  pumvisible() ? '' : ''
inoremap <silent> <expr>  pumvisible() ? '' : ''
inoremap <silent> ! !u
inoremap <silent> , ,u
inoremap <silent> . .u
inoremap <silent> ? ?u
cabbr ps PackerSync
let &cpo=s:cpo_save
unlet s:cpo_save
set clipboard=unnamedplus
set completefunc=v:lua.COQ.Omnifunc
set completeopt=menu,menuone,noselect,noinsert,noinsert,menuone,noselect
set expandtab
set fileencodings=utf-8
set fillchars=eob:\ 
set helplang=en
set nohlsearch
set ignorecase
set inccommand=split
set lazyredraw
set mouse=a
set pumheight=16
set runtimepath=~/.config/nvim,/etc/xdg/nvim,~/.local/share/nvim/site,~/.local/share/nvim/site/pack/packer/opt/telescope-frecency.nvim,~/.local/share/nvim/site/pack/packer/opt/project.nvim,~/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim,~/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-context,~/.local/share/nvim/site/pack/packer/opt/kommentary,~/.local/share/nvim/site/pack/packer/opt/ale,~/.local/share/nvim/site/pack/packer/start/packer.nvim,~/.local/share/flatpak/exports/share/nvim/site,/var/lib/flatpak/exports/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/usr/local/share/nvim/runtime,/usr/local/lib/nvim,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/var/lib/flatpak/exports/share/nvim/site/after,~/.local/share/flatpak/exports/share/nvim/site/after,~/.local/share/nvim/site/after,/etc/xdg/nvim/after,~/.config/nvim/after
set scrolloff=8
set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,resize,winpos,terminal
set shiftwidth=4
set shortmess=TitfFxOnolIc
set showmatch
set noshowmode
set showtabline=2
set smartcase
set smartindent
set softtabstop=4
set noswapfile
set tabline=%1@BufferlineMainClickHandler@%#BufferInactiveSign#▎\ %#BufferInactive#\ %#BufferInactive#init.lua\ \ %1@BufferlineCloseClickHandler@%#BufferInactive#\ %4@BufferlineMainClickHandler@%#BufferCurrentSign#▎\ %#DevIconLuaCurrent#\ %#BufferCurrent#plugins.lua\ \ %4@BufferlineCloseClickHandler@%#BufferCurrent#\ %0@BufferlineMainClickHandler@%#BufferTabpageFill#▎%#BufferTabpageFill#
set tabstop=4
set termguicolors
set undodir=~/.local/share/nvim/undodir
set undofile
set updatetime=50
set wildcharm=<Tab>
set window=54
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.config/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd init.lua
set lines=55 columns=106
edit ~/.config/nvim/lua/plugins.lua
argglobal
balt init.lua
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <BS> v:lua.MPairs.autopairs_bs(4)
xnoremap <buffer> <silent>  :lua require'nvim-treesitter.incremental_selection'.node_decremental()
xnoremap <buffer> <silent>  :lua require'nvim-treesitter.incremental_selection'.node_incremental()
nnoremap <buffer> <silent>  :lua require'nvim-treesitter.incremental_selection'.init_selection()
xnoremap <buffer> <silent>  :lua require'nvim-treesitter.incremental_selection'.scope_incremental()
nnoremap <buffer> <silent>  E :lua require'nvim-treesitter.textobjects.swap'.swap_previous('@parameter.inner')
nnoremap <buffer> <silent>  e :lua require'nvim-treesitter.textobjects.swap'.swap_next('@parameter.inner')
nnoremap <buffer> <silent>  RN :lua require'nvim-treesitter-refactor.smart_rename'.smart_rename(4)
nnoremap <buffer>  hS <Cmd>lua require"gitsigns".stage_buffer()
nnoremap <buffer>  hp <Cmd>lua require"gitsigns".preview_hunk()
nnoremap <buffer>  hU <Cmd>lua require"gitsigns".reset_buffer_index()
nnoremap <buffer>  hr <Cmd>lua require"gitsigns".reset_hunk()
nnoremap <buffer>  hR <Cmd>lua require"gitsigns".reset_buffer()
vnoremap <buffer>  hr <Cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})
nnoremap <buffer>  hs <Cmd>lua require"gitsigns".stage_hunk()
nnoremap <buffer>  hb <Cmd>lua require"gitsigns".blame_line(true)
vnoremap <buffer>  hs <Cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})
nnoremap <buffer>  hu <Cmd>lua require"gitsigns".undo_stage_hunk()
nnoremap <buffer> <expr> [c &diff ? '[c' : '<Cmd>lua require"gitsigns".prev_hunk()'
nnoremap <buffer> <expr> ]c &diff ? ']c' : '<Cmd>lua require"gitsigns".next_hunk()'
xnoremap <buffer> <silent> ac :lua require'nvim-treesitter.textobjects.select'.select_textobject('@call.outer', 'x')
onoremap <buffer> <silent> ac :lua require'nvim-treesitter.textobjects.select'.select_textobject('@call.outer', 'o')
xnoremap <buffer> <silent> ai :lua require'nvim-treesitter.textobjects.select'.select_textobject('@conditional.outer', 'x')
onoremap <buffer> <silent> ai :lua require'nvim-treesitter.textobjects.select'.select_textobject('@conditional.outer', 'o')
xnoremap <buffer> <silent> aC :lua require'nvim-treesitter.textobjects.select'.select_textobject('@class.outer', 'x')
onoremap <buffer> <silent> aC :lua require'nvim-treesitter.textobjects.select'.select_textobject('@class.outer', 'o')
xnoremap <buffer> <silent> af :lua require'nvim-treesitter.textobjects.select'.select_textobject('@function.outer', 'x')
onoremap <buffer> <silent> af :lua require'nvim-treesitter.textobjects.select'.select_textobject('@function.outer', 'o')
xnoremap <buffer> <silent> al :lua require'nvim-treesitter.textobjects.select'.select_textobject('@loop.outer', 'x')
onoremap <buffer> <silent> al :lua require'nvim-treesitter.textobjects.select'.select_textobject('@loop.outer', 'o')
xnoremap <buffer> <silent> il :lua require'nvim-treesitter.textobjects.select'.select_textobject('@loop.inner', 'x')
onoremap <buffer> <silent> il :lua require'nvim-treesitter.textobjects.select'.select_textobject('@loop.inner', 'o')
xnoremap <buffer> <silent> ic :lua require'nvim-treesitter.textobjects.select'.select_textobject('@call.inner', 'x')
onoremap <buffer> <silent> ic :lua require'nvim-treesitter.textobjects.select'.select_textobject('@call.inner', 'o')
xnoremap <buffer> <silent> if :lua require'nvim-treesitter.textobjects.select'.select_textobject('@function.inner', 'x')
onoremap <buffer> <silent> if :lua require'nvim-treesitter.textobjects.select'.select_textobject('@function.inner', 'o')
xnoremap <buffer> <silent> iC :lua require'nvim-treesitter.textobjects.select'.select_textobject('@class.inner', 'x')
onoremap <buffer> <silent> iC :lua require'nvim-treesitter.textobjects.select'.select_textobject('@class.inner', 'o')
xnoremap <buffer> <silent> ii :lua require'nvim-treesitter.textobjects.select'.select_textobject('@conditional.inner', 'x')
onoremap <buffer> <silent> ii :lua require'nvim-treesitter.textobjects.select'.select_textobject('@conditional.inner', 'o')
xnoremap <buffer> <silent> ip :lua require'nvim-treesitter.textobjects.select'.select_textobject('@parameter.inner', 'x')
onoremap <buffer> <silent> ip :lua require'nvim-treesitter.textobjects.select'.select_textobject('@parameter.inner', 'o')
xnoremap <buffer> ih :lua require"gitsigns".select_hunk()
onoremap <buffer> ih :lua require"gitsigns".select_hunk()
inoremap <buffer> <expr> " v:lua.MPairs.autopairs_map(4,'"')
inoremap <buffer> <expr> ' v:lua.MPairs.autopairs_map(4,"'")
inoremap <buffer> <expr> ( v:lua.MPairs.autopairs_map(4,"(")
inoremap <buffer> <expr> ) v:lua.MPairs.autopairs_map(4, ')')
inoremap <buffer> <expr> [ v:lua.MPairs.autopairs_map(4,"[")
inoremap <buffer> <expr> ] v:lua.MPairs.autopairs_map(4, ']')
inoremap <buffer> <expr> ` v:lua.MPairs.autopairs_map(4,"`")
inoremap <buffer> <expr> { v:lua.MPairs.autopairs_map(4,"{")
inoremap <buffer> <expr> } v:lua.MPairs.autopairs_map(4, '}')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=:--
setlocal commentstring=--%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=v:lua.COQ.Omnifunc
setlocal nocopyindent
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'lua'
setlocal filetype=lua
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=jcroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=\\v<((do|load)file|require)[^'\"]*['\"]\\zs[^'\"]+
setlocal includeexpr=<SNR>101_LuaInclude(v:fname)
setlocal indentexpr=nvim_treesitter#indent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,0=end,0=until
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal scrolloff=8
setlocal shiftwidth=4
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%#GalaxyFirstElement#%{luaeval('require(\"galaxyline\").component_decorator')(\"FirstElement\")}%#GalaxyViMode#%{luaeval('require(\"galaxyline\").component_decorator')(\"ViMode\")}%#ViModeSeparator#%#GalaxyFileIcon#%{luaeval('require(\"galaxyline\").component_decorator')(\"FileIcon\")}%#GalaxyFileName#%{luaeval('require(\"galaxyline\").component_decorator')(\"FileName\")}%#FileNameSeparator#%#GalaxyGitIcon#%{luaeval('require(\"galaxyline\").component_decorator')(\"GitIcon\")}%#GalaxyGitBranch#%{luaeval('require(\"galaxyline\").component_decorator')(\"GitBranch\")}%#GalaxyDiffAdd#%{luaeval('require(\"galaxyline\").component_decorator')(\"DiffAdd\")}%#GalaxyDiffModified#%{luaeval('require(\"galaxyline\").component_decorator')(\"DiffModified\")}%#GalaxyDiffRemove#%{luaeval('require(\"galaxyline\").component_decorator')(\"DiffRemove\")}%#GalaxyLeftEnd#%{luaeval('require(\"galaxyline\").component_decorator')(\"LeftEnd\")}%#LeftEndSeparator#%#GalaxyDiagnosticError#%{luaeval('require(\"galaxyline\").component_decorator')(\"DiagnosticError\")}%#GalaxySpace#%{luaeval('require(\"galaxyline\").component_decorator')(\"Space\")}%#GalaxyDiagnosticWarn#%{luaeval('require(\"galaxyline\").component_decorator')(\"DiagnosticWarn\")}%=%#FileFormatSeparator#%#GalaxyFileFormat#%{luaeval('require(\"galaxyline\").component_decorator')(\"FileFormat\")}%#LineInfoSeparator#\ |\ %#GalaxyLineInfo#%{luaeval('require(\"galaxyline\").component_decorator')(\"LineInfo\")}%#PerCentSeparator#%#GalaxyPerCent#%{luaeval('require(\"galaxyline\").component_decorator')(\"PerCent\")}%#GalaxyScrollBar#%{luaeval('require(\"galaxyline\").component_decorator')(\"ScrollBar\")}
setlocal suffixesadd=.lua
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'ON'
setlocal syntax=ON
endif
setlocal tagfunc=
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal winblend=0
setlocal winhighlight=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 207 - ((28 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 207
normal! 017|
tabnext 1
badd +1 init.lua
badd +207 ~/.config/nvim/lua/plugins.lua
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=TitfFxOnolIc
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
