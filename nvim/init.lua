vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'options'
require 'keymaps'

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Save and load folds
-- vim.api.nvim_create_autocmd('BufWinLeave', {
--   desc = 'Save folds to buffer',
--   pattern = '*',
--   callback = function()
--     if vim.fn.bufname '%' ~= '' then
--       vim.cmd 'mkview'
--     end
--   end,
-- })

-- vim.api.nvim_create_autocmd('BufWinEnter', {
--   desc = 'Load folds to buffer',
--   pattern = '*',
--   callback = function()
--     if vim.fn.bufname '%' ~= '' then
--       vim.cmd 'silent! loadview'
--     end
--   end,
-- })

-- [[ Install `lazy.nvim` plugin manager ]]
if vim.fn.exists 'g:vscode' == 0 then -- check if nvim is running in vscode
  local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
  if not vim.loop.fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  end ---@diagnostic disable-next-line: undefined-field
  o.rtp:prepend(lazypath)

  require('lazy').setup({
    -- Use `opts = {}` to force a plugin to be loaded.
    --  This is equivalent to:
    --    require('some_plugin').setup({})
    { import = 'plugins' },
  }, {
    ui = {
      icons = vim.g.have_nerd_font and {} or {
        cmd = '⌘',
        config = '🛠',
        event = '📅',
        ft = '📂',
        init = '⚙',
        keys = '🗝',
        plugin = '🔌',
        runtime = '💻',
        require = '🌙',
        source = '📄',
        start = '🚀',
        task = '📌',
        lazy = '💤 ',
      },
    },
  })
end

if vim.loop.os_uname().sysname == 'Darwin' then
  vim.g.python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.12/bin/python3'
else
  vim.g.python3_host_prog = '/usr/bin/python3'
end
