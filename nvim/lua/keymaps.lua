-- esto es para que no me torturen los diagnosticos de lua
---@diagnostic disable: assign-type-mismatch

local keymap = vim.keymap.set

keymap('n', 'x', [["_x]], { noremap = 'true' })

keymap('n', '<C-d>', [[<C-d>zz]], { noremap = 'true' })
keymap('n', '<C-u>', [[<C-u>zz]], { noremap = 'true' })
keymap('n', 'n', [[nzzzv]], { noremap = 'true' })
keymap('n', 'N', [[Nzzzv]], { noremap = 'true' })

-- guardar a la clipboard
keymap({ 'n', 'v' }, [[<leader>y]], [["+y]], { desc = 'Yank to clipboard', noremap = 'true' })

-- guardar con backspace
keymap('n', '<BS>', '<cmd>:w<cr>', { noremap = 'true' })
keymap('n', '<leader><cr>', '<cmd>vsplit term://zsh<cr>', { noremap = 'true' })

-- <esc>
keymap('v', '<BS>', '<esc>', { noremap = 'true' })
keymap({ 'i', 't' }, 'jk', '<esc>', { desc = 'Exit insert mode', noremap = 'true' })
keymap('n', '<esc>', [[<cmd>nohlsearch<cr>]], { noremap = 'true' })

-- mover lineas
keymap({ 'n', 'i' }, '<A-j>', '<cmd>m+<CR>', { desc = 'move line down', noremap = 'true' })
keymap({ 'n', 'i' }, '<A-k>', '<cmd>m-2<CR>', { desc = 'move line up', noremap = 'true' })
keymap('v', '<A-j>', [[<cmd>m '>+1<cr>]], { desc = 'move line down', noremap = 'true' })
keymap('v', '<A-k>', [[<cmd>m '<-2<cr>]], { desc = 'move line up', noremap = 'true' })

keymap('v', '>', [[>gv]], { desc = 'indent +1 tab', noremap = 'true' })
keymap('v', '<', [[<gv]], { desc = 'indent -1 tab', noremap = 'true' })

keymap('n', '<C-m>', '<cmd>nohlsearch<CR>', { noremap = 'true' })

keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
keymap('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
keymap('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

--  See `:help wincmd` for a list of all window commands
keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Oil
keymap('n', '<leader>o', '<cmd>Oil<cr>', { desc = '[O]il' })
