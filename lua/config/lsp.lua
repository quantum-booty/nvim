local opts = { noremap = true, silent = true }
local autocmd = require('utils').autocmd

vim.opt.updatetime = 250
vim.opt.completeopt:append({ 'menuone', 'noselect', 'noinsert' })
vim.opt.completeopt:remove('preview')
vim.opt.shortmess:append('c')

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, {
    border = "single", focusable = false
}
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
    vim.lsp.handlers.signature_help, {
    border = "single"
}
)

-------------------------------------------------------------------------------
-- Diagnostic settings
-------------------------------------------------------------------------------


-- diagnostic colours
vim.cmd([[
sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=
sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=
sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=
sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=

" sign define DiagnosticSignHint text=💡 texthl=DiagnosticSignHint linehl= numhl=
]])


-- =============================================================================
-- # lsp-config settings
-- =============================================================================
-- vim.lsp.set_log_level('debug')
-- log_path: ~/.cache/nvim/lsp.log


require("neodev").setup()


-------------------------------------------------------------------------------
-- lsp on attach settings
-------------------------------------------------------------------------------
local nvim_lsp = require('lspconfig')
-- local aerial = require'aerial'
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    local bufmap = function(mode, keys, func, desc)
        if desc then
            desc = 'LSP: ' .. desc
        end
        vim.keymap.set(mode, keys, func, { buffer = bufnr, desc = desc, noremap = true, silent = true })
    end

    if client.name == 'pyright' then
        bufmap('n', '<leader>=', '<cmd>silent! Neoformat black<CR>')
        bufmap('v', '<leader>=', '<cmd>silent! Neoformat black<CR>')
    else
        bufmap('n', '<leader>=', '<cmd>set ff=unix<cr><cmd>lua vim.lsp.buf.format({async=true})<CR>')
        bufmap('v', '<leader>=', '<cmd>set ff=unix<cr><cmd>lua vim.lsp.buf.format({async=true})<CR>')
    end

    -- Mappings.
    bufmap('n', 'gt', vim.lsp.buf.type_definition)

    -- bufmap('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>')
    -- bufmap('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>')

    -- because of this <tab> mapping, <C-i> has to be mapped to something else.
    bufmap('n', '<tab>', function() vim.lsp.buf.hover({ border = "single" }) end)

    bufmap('n', '<leader>rn', vim.lsp.buf.rename)
    bufmap('n', '<leader>rr', '<cmd>LspRestart<CR>')



    -- " --- LSP Pickers
    bufmap('n', '<leader>pi', require('telescope.builtin').lsp_implementations)
    bufmap('n', 'gr', require('telescope.builtin').lsp_references)
    bufmap('n', '<leader>pr', require('telescope.builtin').lsp_references)

    if client.name == 'omnisharp' then
        bufmap('n', 'gd',
            [[<cmd>lua require('omnisharp_extended').telescope_lsp_definitions({initial_mode='normal'})<cr>]])
    else
        bufmap('n', 'gd', require('telescope.builtin').lsp_definitions)
    end


    -- " workspace symbol
    bufmap('n', '<leader>pW', require('telescope.builtin').lsp_workspace_symbols)
    -- " document symbol using treesitter
    -- bufmap('n', '<leader>pd', [[<cmd>lua require('telescope.builtin').treesitter()<CR>]])
    bufmap('n', '<leader>pd', require('telescope.builtin').lsp_document_symbols)




    bufmap('n', '<leader>c', vim.lsp.buf.code_action)
    bufmap('v', '<leader>c', vim.lsp.buf.code_action)

    bufmap('n', '<LeftMouse>', '<LeftMouse><cmd>lua vim.lsp.buf.hover({border = "single"})<CR>')
    bufmap('n', '<RightMouse>', '<LeftMouse><cmd>lua vim.lsp.buf.definition()<CR>')


    local rt = require("rust-tools")
    if client.name == 'rust_analyzer' then
        bufmap("n", "<tab>", rt.hover_actions.hover_actions)
    end
end



-------------------------------------------------------------------------------
-- nvim-cmp settings
-------------------------------------------------------------------------------
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

-------------------------------------------------------------------------------
-- Mason
-------------------------------------------------------------------------------
-- Setup mason so it can manage external tooling
require('mason').setup()

-- Enable the following language servers
local servers = { 'rust_analyzer', 'pyright', 'omnisharp', 'sumneko_lua', 'dockerls', 'yamlls' }

-- Ensure the servers above are installed
require('mason-lspconfig').setup {
  ensure_installed = servers,
}

-------------------------------------------------------------------------------
-- language server setup
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- haskell
-------------------------------------------------------------------------------
-- autocmd('haskell', 'FileType',
--     { pattern = 'haskell',
--         command = [[autocmd CursorHold,CursorHold,InsertLeave <buffer> lua vim.lsp.codelens.refresh()]] })
-- nvim_lsp.hls.setup { capabilities = capabilities, on_attach = on_attach }
-------------------------------------------------------------------------------
-- fsharp
-------------------------------------------------------------------------------
-- nvim_lsp.fsautocomplete.setup{ capabilities = capabilities, on_attach = on_attach }
-- vim.cmd([[
-- let g:fsharp#lsp_auto_setup = 0
-- let g:fsharp#exclude_project_directories = ['paket-files']
-- ]])
-- require 'ionide'.setup { capabilities = capabilities, on_attach = on_attach }
-------------------------------------------------------------------------------
-- scala
-------------------------------------------------------------------------------
-- local metals_config = require("metals").bare_config()
-- metals_config.settings = {
--     showImplicitArguments = true,
--     -- excludedPackages = { "akka.actor.typed.javadsl", "com.github.swagger.akka.javadsl" },
-- }
-- metals_config.init_options.statusBarProvider = "on"
-- metals_config.capabilities = capabilities
-- metals_config.on_attach = on_attach
-- local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
-- vim.api.nvim_create_autocmd("FileType", {
--     pattern = { "scala", "sbt" },
--     callback = function()
--         require("metals").initialize_or_attach(metals_config)
--     end,
--     group = nvim_metals_group,
-- })


nvim_lsp.dockerls.setup { capabilities = capabilities, on_attach = on_attach }
nvim_lsp.yamlls.setup { capabilities = capabilities, on_attach = on_attach }
require('rust-tools').setup {
    server = {
        capabilities = capabilities, on_attach = on_attach,
        settings = {
            ["rust-analyzer"] = {
                checkOnSave = {
                    command = "clippy"
                }
            }
        }
    },
    settings = {
        cargo = {
            -- load generated code like protobuf
            runBuildScripts = true
        }
    }
}


local omnisharp_bin = nil
if vim.fn.has('win32') == 1 then
    USERPROFILE = vim.env.USERPROFILE
    if USERPROFILE then
        omnisharp_bin = USERPROFILE .. "/omnisharp-win-x64/OmniSharp.exe"
    end
else
    omnisharp_bin = "/home/henryw/omnisharp/run"
end
nvim_lsp.omnisharp.setup {
    handlers = {
        ["textDocument/definition"] = require('omnisharp_extended').handler,
    },
    capabilities = capabilities,
    cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(vim.fn.getpid()) };
    on_attach = on_attach,
    enable_roslyn_analyzers = false,
    enable_import_completion = true,
}



-------------------------------------------------------------------------------
-- python auto-virtual environment activation
-------------------------------------------------------------------------------
local util = require('lspconfig/util')
local path = util.path

local function find_virtual_environment(workspace)
    for _, dir in pairs({ 'venv', 'venv1', 'venv2' }) do
        local match = vim.fn.glob(path.join(workspace, dir))
        if match ~= '' then
            return path.dirname(match)
        end
    end
    return nil
end

local function get_python_path(virtual_env_path)
    if virtual_env_path then
        if vim.fn.has('win32') == 1 then
            return virtual_env_path .. "\\Scripts" .. "\\python"
        else
            return path.join(virtual_env_path, 'bin', 'python')
        end
    end
    return exepath('python3') or exepath('python') or 'python'
end

local function setup_virtual_env(virtual_env_path)
    vim.env.VIRTUAL_ENV = virtual_env_path

    if vim.fn.has('win32') == 1 then
        local new_path = virtual_env_path .. '\\Scripts' .. ';' .. vim.env.Path
        vim.env.PATH = new_path
    else
        vim.env.PATH = path.join(virtual_env_path, "/bin:", vim.env.PATH)
    end
end

nvim_lsp.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    before_init = function(_, config)
        if not vim.env.VIRTUAL_ENV then
            local virtual_env_path = find_virtual_environment(config.root_dir)
            setup_virtual_env(virtual_env_path)
            local python_path = get_python_path(virtual_env_path)
            config.settings.python.pythonPath = python_path
        end
    end,
    -- settings = {
    --     python = {
    --         analysis = {
    --             autoSearchPaths = true,
    --             diagnosticMode = "workspace",
    --             useLibraryCodeForTypes = true,
    --             typeCheckingMode = "strict",
    --         }
    --     }
    -- }
})

-- lua
-- Make runtime files discoverable to the server
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')
nvim_lsp.sumneko_lua.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = { library = vim.api.nvim_get_runtime_file('', true) },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = { enable = false },
    },
  },
}

local function toggle_diagnostic_mappings()
    if vim.diagnostic.config().virtual_lines then
        vim.keymap.set('n', 'gn', function() vim.diagnostic.goto_next({ float = false }) end, opts)
        vim.keymap.set('n', 'gp', function() vim.diagnostic.goto_prev({ float = false }) end, opts)
    else
        vim.keymap.set('n', 'gn', function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set('n', 'gp', function() vim.diagnostic.goto_prev() end, opts)
    end
end

local function toggle_lsp_lines()
    local new_value = not vim.diagnostic.config().virtual_lines
    vim.diagnostic.config({ virtual_lines = new_value, virtual_text = not new_value })
    toggle_diagnostic_mappings()
    return new_value
end

require("lsp_lines").setup()
vim.diagnostic.config({ virtual_text = true, virtual_lines = false, float = { border = 'single', show_header = false } })
toggle_diagnostic_mappings()
vim.keymap.set("n", "<Leader>d", toggle_lsp_lines, { desc = "Toggle lsp_lines" })
