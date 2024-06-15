o = vim.opt
g = vim.g

g.have_nerd_font = true
o.termguicolors = true
o.writebackup = false
o.swapfile = false

-- mostrar una status bar global al trabajar con splits
vim.opt.laststatus = 3
-- mostrar la tabline: 0 (nunca), 1 (+1 archivo), 2 (siempre)
vim.opt.showtabline = 2

-- que cuando hay un comentario, 'o' u 'O' no continue comentando
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function()
    vim.opt_local.formatoptions:remove { 'o' }
  end,
})

o.number = true
o.relativenumber = true

o.mouse = 'a'

o.showmode = false
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true

--  Remove this option if you want your OS clipboard to remain independent.
-- o.clipboard = 'unnamedplus'

-- Enable break indent
o.breakindent = true

-- Save undo history
-- if vim.loop.os_uname().sysname ~= 'Darwin' then
o.undofile = true
-- end

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
o.ignorecase = true
o.smartcase = true
o.background = 'dark'
o.wrap = false
o.cmdheight = 1
o.showmatch = true -- show matching parenthesis on cursor hover
o.foldmethod = 'marker'
o.foldlevel = 0

-- el espacio a la izquierda
o.signcolumn = 'yes'

-- Decrease update time
o.updatetime = 250

-- Decrease mapped sequence wait time. Displays which-key popup sooner
o.timeoutlen = 600

-- Configure how new splits should be opened
o.splitright = true
o.splitbelow = true

-- mostrar caracteres en los tab y etc
--  See `:help 'list'`
o.list = false
--  and `:help 'listchars'`
--o.listchars = { tab = '»', trail = '·', nbsp = '␣', eol = '' }

-- Preview substitutions live, as you type!
o.inccommand = 'split'

-- Show which line your cursor is on
o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
o.scrolloff = 10

-- Set highlight on search, but clear on pressing <Esc> in normal mode
o.hlsearch = true
