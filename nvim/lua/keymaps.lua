local keymap = vim.keymap.set

keymap('n', 'x', [["_x]], { noremap = 'true' })
keymap('n', '<esc>', [[<cmd>nohlsearch<cr>]], { noremap = 'true' })
keymap('n', '<C-d>', [[<C-d>zz]], { noremap = 'true' })
keymap('n', '<C-u>', [[<C-u>zz]], { noremap = 'true' })
keymap('n', 'n', [[nzzzv]], { noremap = 'true' })
keymap('n', 'N', [[Nzzzv]], { noremap = 'true' })

keymap('n', '<C-s>', '<cmd>w<cr>', { noremap = 'true' })
keymap('n', '<C-q>', '<cmd>qa<cr>', { noremap = 'true' })
keymap('n', ',w', '<cmd>w<cr>', { noremap = 'true' })
keymap('n', ',q', '<cmd>qa<cr>', { noremap = 'true' })

keymap({ 'n', 'v' }, [[<leader>y]], [["+y]], { desc = 'Yank to clipboard', noremap = 'true' })
keymap('i', 'jk', '<Esc>', { desc = 'Exit insert mode', noremap = 'true' })
keymap({ 'n', 'v' }, '<BS>', '<Esc>', { noremap = 'true' })

keymap({ 'n', 'i' }, '<A-j>', '<cmd>m+<CR>', { desc = 'move line down', noremap = 'true' })
keymap({ 'n', 'i' }, '<A-k>', '<cmd>m-2<CR>', { desc = 'move line up', noremap = 'true' })
keymap('v', '<A-j>', [[<cmd>m '>+1<cr>]], { desc = 'move line up', noremap = 'true' })
keymap('v', '<A-k>', [[<cmd>m '<-2<cr>]], { desc = 'move line up', noremap = 'true' })

keymap('v', '>', [[>gv]], { desc = 'move line up', noremap = 'true' })
keymap('v', '<', [[<gv]], { desc = 'move line up', noremap = 'true' })

keymap('n', '<C-m>', '<cmd>nohlsearch<CR>', { noremap = 'true' })

keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
keymap('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- keymap('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
keymap('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
keymap('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
keymap('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
keymap('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

--  See `:help wincmd` for a list of all window commands
keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
