local cmd = vim.cmd
local o_s = vim.o
local map_key = vim.api.nvim_set_keymap
local buf_map_key = vim.api.nvim_buf_set_keymap

local function opt(o, v, scopes)
    scopes = scopes or { o_s }
    for _, s in ipairs(scopes) do s[o] = v end
end

local function autocmd_multi(group, cmds, clear)
    local group_id = vim.api.nvim_create_augroup(group, { clear = (clear == nil) and true or clear })
    for _, c in ipairs(cmds) do
        local opts = c[2]
        opts.group = group_id
        vim.api.nvim_create_autocmd(c[1], opts)
    end
end

local function autocmd(group, events, opts, clear)
    local group_id = vim.api.nvim_create_augroup(group, { clear = (clear == nil) and true or clear })
    opts.group = group_id
    vim.api.nvim_create_autocmd(events, opts)
end

local function buf_map(buffer, modes, lhs, rhs, opts)
    opts = opts or {}
    buf_map = buf_map or false
    opts.noremap = opts.noremap == nil and true or opts.noremap
    if type(modes) == 'string' then modes = { modes } end
    for _, mode in ipairs(modes) do buf_map_key(buffer, mode, lhs, rhs, opts) end
end

local function map(modes, lhs, rhs, opts)
    opts = opts or {}
    local buf_map = buf_map or false
    opts.noremap = opts.noremap == nil and true or opts.noremap
    if type(modes) == 'string' then modes = { modes } end
    for _, mode in ipairs(modes) do map_key(mode, lhs, rhs, opts) end
end

local function not_windows()
    return vim.fn.has 'win32' ~= 1
end

local function is_windows()
    return vim.fn.has 'win32' == 1
end

return { opt = opt, autocmd = autocmd, autocmd_multi = autocmd_multi, map = map, not_windows = not_windows, buf_map = buf_map, is_windows = is_windows }
