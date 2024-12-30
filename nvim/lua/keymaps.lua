-- esto es para que no me torturen los diagnosticos de lua
---@diagnostic disable: assign-type-mismatch

local m = vim.keymap.set

m('n', 'x', [["_x]], { noremap = 'true' })

m('n', '<C-d>', [[<C-d>zz]], { noremap = 'true' })
m('n', '<C-u>', [[<C-u>zz]], { noremap = 'true' })
m('n', 'n', [[nzzzv]], { noremap = 'true' })
m('n', 'N', [[Nzzzv]], { noremap = 'true' })

-- guardar a la clipboard
m({ 'n', 'v' }, [[<leader>y]], [["+y]], { desc = 'Yank to clipboard', noremap = 'true' })

-- guardar con backspace
m('n', '<BS>', '<cmd>:w<cr>', { noremap = 'true' })
m('n', '<leader><BS>', '<cmd>:wqa<cr>', { noremap = 'true' })
m('n', '<leader>q', '<cmd>:q<cr>', { noremap = 'true' })

-- <esc>
m('v', '<BS>', '<esc>', { noremap = 'true' })
m({ 'i', 't' }, 'jk', '<esc>', { desc = 'Exit insert mode', noremap = 'true' })
m({ 'i', 't' }, 'JK', '<esc>', { desc = 'Exit insert mode', noremap = 'true' })
m('n', '<esc>', [[<cmd>nohlsearch<cr>]], { noremap = 'true' })

-- mover lineas
m({ 'n', 'i' }, '<A-j>', '<cmd>m+<CR>', { desc = 'move line down', noremap = 'true' })
m({ 'n', 'i' }, '<A-k>', '<cmd>m-2<CR>', { desc = 'move line up', noremap = 'true' })
m('v', '<A-j>', [[<cmd>m '>+1<cr>]], { desc = 'move line down', noremap = 'true' })
m('v', '<A-k>', [[<cmd>m '<-2<cr>]], { desc = 'move line up', noremap = 'true' })

m('v', '>', [[>gv]], { desc = 'indent +1 tab', noremap = 'true' })
m('v', '<', [[<gv]], { desc = 'indent -1 tab', noremap = 'true' })

m('n', '<C-m>', '<cmd>nohlsearch<CR>', { noremap = 'true' })

m('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
m('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
m('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
m('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

--  See `:help wincmd` for a list of all window commands
m('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
m('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
m('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
m('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

m('n', '<leader>;', 'gt', { desc = 'move next tab' })
m('n', '<leader>a', 'gT', { desc = 'move previos tab' })
m('n', '<leader-;>', 'gt', { desc = 'move next tab' })
m('n', '<leader-a>', 'gT', { desc = 'move previos tab' })

-- Oil
m('n', '<leader>o', '<cmd>Oil<cr>', { desc = '[O]il' })

-- Terminal
m ''

m('n', '<leader><cr>', '<cmd>vsplit term://zsh<cr>', { noremap = 'true' })
m('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
