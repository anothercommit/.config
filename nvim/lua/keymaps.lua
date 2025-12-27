-- esto es para que no me torturen los diagnosticos de lua
---@diagnostic disable: assign-type-mismatch

local k = vim.keymap.set

vim.keymap.set({'n','v'}, '<leader>lf', vim.lsp.buf.format)

k('n', '<leader>q', ':q', { noremap = 'true' })
k('n', 'x', [["_x]], { noremap = 'true' })
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

k({ 'n', 'v' }, '<leader>f', 'zf', { noremap = 'true', desc = '[f]old' })

k('n', '<C-d>', [[<C-d>zz]], { noremap = 'true' })
k('n', '<C-u>', [[<C-u>zz]], { noremap = 'true' })
k('n', 'n', [[nzzzv]], { noremap = 'true' })
k('n', 'N', [[Nzzzv]], { noremap = 'true' })

-- guardar a la clipboard
k({ 'n', 'v', 'x' }, '<leader>y', [["+y]], { desc = 'Yank to clipboard', noremap = 'true' })
k({ 'n', 'v', 'x' }, '<leader>d', [["+d]], { desc = 'Delete to clipboard', noremap = 'true' })

-- guardar con backspace
k('n', '<BS>', '<cmd>:w<cr>', { noremap = 'true' })

-- <esc>
k('v', '<BS>', '<esc>', { noremap = 'true' })
k({ 'i', 't' }, 'jk', '<esc>', { desc = 'Exit insert mode', noremap = 'true' })
k({ 'i', 't' }, 'JK', '<esc>', { desc = 'Exit insert mode', noremap = 'true' })
k('n', '<esc>', [[<cmd>nohlsearch<cr>]], { noremap = 'true' })

-- mover lineas
k({ 'n', 'i' }, '<A-j>', '<cmd>m+<CR>', { desc = 'move line down', noremap = 'true' })
k({ 'n', 'i','v' }, '<A-k>', '<cmd>m-2<CR>', { desc = 'move line up', noremap = 'true' })

k('v', '>', [[>gv]], { desc = 'indent +1 tab', noremap = 'true' })
k('v', '<', [[<gv]], { desc = 'indent -1 tab', noremap = 'true' })

-- kmset('n', '<C-m>', '<cmd>nohlsearch<CR>', { noremap = 'true' })

k('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
k('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

--  See `:help wincmd` for a list of all window commands
k('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
k('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
k('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
k('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

k('n', '<leader>;', 'gt', { desc = 'move next tab' })
k('n', '<leader>a', 'gT', { desc = 'move previos tab' })

-- Oil
k('n', '<leader>o', '<cmd>Oil<cr>', { desc = '[O]il' })

-- Terminal
local function open_terminal()
  vim.cmd "vs"
  vim.cmd "term fish"
  vim.cmd.wincmd 'L'
  vim.cmd "norm A"
  vim.api.nvim_win_set_width(0, 20)

  term_id = vim.bo.channel
end

k('n', '<leader><cr>', open_terminal)

k('n', '<leader><s-cr>', function()
  local filename = vim.fn.expand '%:t'

  open_terminal()

  if filename:sub(-4) == '.cpp' or filename:sub(-2) == '.c' then
      vim.fn.chansend(term_id, { 'make\r' })
  end
  if filename:sub(-3) == '.hs' then
      vim.fn.chansend(term_id, { 'ghci ' .. filename .. '\r' })
  end
  if filename:sub(-3) == '.rs' then
      vim.fn.chansend(term_id, { 'cargo run \r' })
  end
end)

k('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
k('t', 'jk', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
