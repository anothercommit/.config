-- esto es para que no me torturen los diagnosticos de lua
---@diagnostic disable: assign-type-mismatch

local kmset = vim.keymap.set

kmset('n', 'x', [["_x]], { noremap = 'true' })

kmset('n', '<C-d>', [[<C-d>zz]], { noremap = 'true' })
kmset('n', '<C-u>', [[<C-u>zz]], { noremap = 'true' })
kmset('n', 'n', [[nzzzv]], { noremap = 'true' })
kmset('n', 'N', [[Nzzzv]], { noremap = 'true' })

-- guardar a la clipboard
kmset({ 'n', 'v' }, [[<leader>y]], [["+y]], { desc = 'Yank to clipboard', noremap = 'true' })

-- guardar con backspace
kmset('n', '<BS>', '<cmd>:w<cr>', { noremap = 'true' })
kmset('n', '<leader><BS>', '<cmd>:wqa<cr>', { noremap = 'true' })
kmset('n', '<leader>q', '<cmd>:q<cr>', { noremap = 'true' })

-- <esc>
kmset('v', '<BS>', '<esc>', { noremap = 'true' })
kmset({ 'i', 't' }, 'jk', '<esc>', { desc = 'Exit insert mode', noremap = 'true' })
kmset({ 'i', 't' }, 'JK', '<esc>', { desc = 'Exit insert mode', noremap = 'true' })
kmset('n', '<esc>', [[<cmd>nohlsearch<cr>]], { noremap = 'true' })

-- mover lineas
kmset({ 'n', 'i' }, '<A-j>', '<cmd>m+<CR>', { desc = 'move line down', noremap = 'true' })
kmset({ 'n', 'i' }, '<A-k>', '<cmd>m-2<CR>', { desc = 'move line up', noremap = 'true' })
kmset('v', '<A-j>', [[<cmd>m '>+1<cr>]], { desc = 'move line down', noremap = 'true' })
kmset('v', '<A-k>', [[<cmd>m '<-2<cr>]], { desc = 'move line up', noremap = 'true' })

kmset('v', '>', [[>gv]], { desc = 'indent +1 tab', noremap = 'true' })
kmset('v', '<', [[<gv]], { desc = 'indent -1 tab', noremap = 'true' })

kmset('n', '<C-m>', '<cmd>nohlsearch<CR>', { noremap = 'true' })

kmset('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
kmset('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
kmset('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
kmset('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

--  See `:help wincmd` for a list of all window commands
kmset('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
kmset('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
kmset('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
kmset('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

kmset('n', '<leader>;', 'gt', { desc = 'move next tab' })
kmset('n', '<leader>a', 'gT', { desc = 'move previos tab' })
kmset('n', '<leader-;>', 'gt', { desc = 'move next tab' })
kmset('n', '<leader-a>', 'gT', { desc = 'move previos tab' })

-- Oil
kmset('n', '<leader>o', '<cmd>Oil<cr>', { desc = '[O]il' })

-- Terminal

kmset('n', '<leader><cr>', function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd 'J'

  term_id = vim.bo.channel
end)

kmset('n', '<leader><s-cr>', function()
  vim.fn.chansend(term_id, { 'make\r\n' })
end)

kmset('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
